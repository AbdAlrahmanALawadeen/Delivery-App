import 'package:delivery_app/business_logic/cubit/local_cubit.dart';
import 'package:delivery_app/gen/fonts.gen.dart';
import 'package:delivery_app/data/models/filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Filters extends StatefulWidget {
  const Filters({super.key, required this.parent});

  final String parent;

  @override
  State<Filters> createState() => _FiltersState();
}

class _FiltersState extends State<Filters> {
  @override
  void initState() {
    super.initState();
    context.read<LocalCubit>().fetchFilters();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalCubit, LocalState>(
      builder: (context, state) {
        if (state is FiltersLoaded) {
          return const Center(child: CircularProgressIndicator(),);
        } 
        else if (state is LocalError) {
          return Center(
            child: Text(
              'Error: ${state.message}',
              style: TextStyle(
                color: Colors.red,
                fontSize: 16.sp,
                fontFamily: FontFamily.sFProText,
              ),
            ),
          );
        } 
        else if (state is FiltersLoaded) {
          List<Filter> filters = state.filters;
          List<Filter> children = filters.where((filter) => filter.parent == widget.parent).toList();

          return SizedBox(
            height: 34.h,
            width: MediaQuery.sizeOf(context).width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: children.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: ElevatedButton.icon(
                    icon: children[index].showIcon == true ? const Icon(Icons.check) : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: children[index].isPressed ? const Color.fromRGBO(226, 203, 255, 1) : Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        children[index].showIcon = !(children[index].showIcon);
                        children[index].isPressed = !(children[index].isPressed);
                      });
                    },
                    label: Text(
                      '${children[index].title} (${children[index].number})',
                      style: TextStyle(
                        color: children[index].isPressed ? const Color.fromRGBO(45, 12, 87, 1) : const Color.fromRGBO(149, 134, 168, 1),
                        fontFamily: FontFamily.sFProText,
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        } 
        else {
          return const Center();
        }
      },
    );
  }
}
