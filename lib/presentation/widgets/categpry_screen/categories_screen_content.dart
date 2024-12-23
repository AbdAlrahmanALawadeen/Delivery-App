import 'package:delivery_app/business_logic/cubit/local_cubit.dart';
import 'package:delivery_app/presentation/widgets/categpry_screen/category_item.dart';
import 'package:delivery_app/presentation/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesScreenContent extends StatefulWidget {
  const CategoriesScreenContent({super.key});

  @override
  State<CategoriesScreenContent> createState() => _CategoriesScreenContentState();
}

class _CategoriesScreenContentState extends State<CategoriesScreenContent> {
  @override
  void initState() {
    super.initState();
    context.read<LocalCubit>().fetchCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Search(),
          SizedBox(height: 40.h),
          Expanded(
            child: BlocBuilder<LocalCubit, LocalState>(
              builder: (context, state) {
                if (state is LocalLoading) {
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                } 
                else if (state is CategoriesLoaded) {
                  final categories = state.categories;
                  return GridView.builder(
                    physics: const ClampingScrollPhysics(),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      mainAxisSpacing: 20.h,
                      crossAxisCount: 2,
                      crossAxisSpacing: 20.w,
                      mainAxisExtent: 211.h,
                    ),
                    itemCount: categories.length,
                    itemBuilder: (context, index) {
                      return CategoryItem(
                        category: categories[index],
                        onSelectCategory: _onSelectCategory,
                      );
                    },
                  );
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
                } else {
                  return const Center(
                    child: Text('No data available.'),
                  );
                }
              },
            ),
          ),
        ],
      ),
    );
  }

  void _onSelectCategory(BuildContext context, String title) {
    Navigator.pushNamed(
      context,
      '/childScreen',
      arguments: {'title': title},
    );
  }
}
