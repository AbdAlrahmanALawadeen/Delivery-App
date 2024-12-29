import 'package:delivery_app/business_logic/cubit/filters_cubit.dart';
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
    context.read<FiltersCubit>().fetchFilters();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FiltersCubit, FiltersState>(
      builder: (context, state) {
        if (state is FiltersLoading) {
          return SizedBox(
            height: 34.h,
            width: MediaQuery.sizeOf(context).width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 5,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: ElevatedButton(
                    onPressed: null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[300],
                      disabledForegroundColor: Colors.transparent,
                      disabledBackgroundColor: Colors.grey[300],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                    child: Container(
                      width: 100.w,
                      height: 16.h,
                      color: Colors.transparent,
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FiltersLoaded) {
          List<Filter> filters = state.filters;

          return SizedBox(
            height: 34.h,
            width: MediaQuery.sizeOf(context).width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: filters.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  margin: const EdgeInsets.only(left: 10),
                  child: ElevatedButton.icon(
                    icon: filters[index].showIcon == true ? const Icon(Icons.check) : null,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: filters[index].isPressed
                          ? const Color.fromRGBO(226, 203, 255, 1)
                          : Colors.white,
                    ),
                    onPressed: () {
                      setState(() {
                        filters[index].showIcon = !(filters[index].showIcon);
                        filters[index].isPressed = !(filters[index].isPressed);
                      });
                    },
                    label: Text(
                      '${filters[index].title} (${filters[index].number})',
                      style: TextStyle(
                        color: filters[index].isPressed
                            ? const Color.fromRGBO(45, 12, 87, 1)
                            : const Color.fromRGBO(149, 134, 168, 1),
                        fontFamily: FontFamily.sFProText,
                      ),
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is FiltersError) {
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
        } else {
          return const Center(child: Text('No filters available'));
        }
      },
    );
  }
}
