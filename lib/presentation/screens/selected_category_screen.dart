import 'package:delivery_app/business_logic/cubit/local_cubit.dart';
import 'package:delivery_app/gen/fonts.gen.dart';
import 'package:delivery_app/presentation/widgets/navigation_bar.dart';
import 'package:delivery_app/presentation/widgets/selected_category_screen/category_screen_contnt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChildScreen extends StatefulWidget {
  final String title;

  const ChildScreen({super.key, required this.title});

  @override
  State<ChildScreen> createState() => _ChildScreenState();
}

class _ChildScreenState extends State<ChildScreen> {
  @override
  void initState() {
    super.initState();
    context.read<LocalCubit>().fetchCategoryChild();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(246, 245, 245, 1),
        body: BlocBuilder<LocalCubit, LocalState>(
          builder: (context, state) {
            if (state is LocalLoading) {
              return const Center(
                child: CircularProgressIndicator(),
              );
            } 
            else if (state is CategoryChildLoaded) {
              final filteredChildren = state.categoryChild
                  .where((child) => child.parent == widget.title)
                  .toList();

              if (filteredChildren.isEmpty) {
                return Center(
                  child: Text(
                    'No Items Found.',
                    style: TextStyle(
                      fontFamily: FontFamily.sFProText,
                      fontSize: 30.sp,
                    ),
                  ),
                );
              }

              return ChildScreenContent(title: widget.title);
            } 
            else if (state is LocalError) {
              return Center(
                child: Text(
                  state.message,
                  style: TextStyle(
                    fontSize: 20.sp,
                    color: Colors.red,
                  ),
                  textAlign: TextAlign.center,
                ),
              );
            } 
            else {
              return const Center(
                child: Text('No data available.'),
              );
            }
          },
        ),
        bottomNavigationBar: const CustomNavigationBar(),
      ),
    );
  }
}
