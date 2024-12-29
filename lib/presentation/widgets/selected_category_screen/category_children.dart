import 'package:delivery_app/business_logic/cubit/local_cubit.dart';
import 'package:delivery_app/data/models/category_child.dart';
import 'package:delivery_app/presentation/widgets/selected_category_screen/category_child_card.dart';
import 'package:delivery_app/presentation/widgets/selected_category_screen/skeleton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoryChildren extends StatefulWidget {
  const CategoryChildren({super.key, required this.title});

  final String title;

  @override
  State<CategoryChildren> createState() => _CategoryChildrenState();
}

class _CategoryChildrenState extends State<CategoryChildren> {
  @override
  void initState() {
    super.initState();
    context.read<LocalCubit>().fetchCategoryChild();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocalCubit, LocalState>(
      builder: (context, state) {
        if (state is LocalLoading) {
          return const Skeleton();
        } 
        else if (state is CategoryChildLoaded) {
          List<Categorychild> children = state.categoryChild.where((child) => child.parent == widget.title).toList();
          if (children.isEmpty) {
            return Center(
              child: Text(
                'No items found.',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 16.sp,
                ),
              ),
            );
          }

          return SizedBox(
            width: MediaQuery.sizeOf(context).width,
            height: MediaQuery.sizeOf(context).height * 0.45,
            child: ListView.builder(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              itemCount: children.length,
              itemBuilder: (BuildContext context, int index) {
                return CategoryChildCard(child : children[index]);
              },
            ),
          );
        } 
        else if (state is LocalError) {
          return Center(
            child: Text(
              state.message,
              style: TextStyle(
                color: Colors.red,
                fontSize: 16.sp,
              ),
            ),
          );
        } 
        else {
          return const Center(child: Text('Something went wrong.'));
        }
      },
    );
  }
}
