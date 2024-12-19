import 'package:delivery_app/API/http.dart';
import 'package:delivery_app/models/category.dart';
import 'package:delivery_app/widgets/category_item.dart';
import 'package:delivery_app/widgets/search.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CategoriesScreenContent extends StatefulWidget{
  const CategoriesScreenContent({super.key});

  @override
  State<CategoriesScreenContent> createState() => _CategoriesScreenContentState();
}

class _CategoriesScreenContentState extends State<CategoriesScreenContent> {
  List<Category> categories = [];

  @override
  void initState(){
    super.initState();
    startApp();
  }

  void startApp() async {
    final Api api = Api();

    try {
      var data = await api.fetchCategories();
      setState(() {
        categories = data;
      });
    } catch (e) {
      categories = [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Search(),

            SizedBox(height: 40.h,),

            Expanded(
              child: GridView.builder(
                physics: const ClampingScrollPhysics(),
                gridDelegate:  SliverGridDelegateWithFixedCrossAxisCount(
                  mainAxisSpacing: 20.h,
                  crossAxisCount: 2,
                  crossAxisSpacing: 20.w,
                  mainAxisExtent: 211.h
                ),
                itemCount: categories.length,
                itemBuilder: (context, index){
                  return CategoryItem(category: categories[index], onSelectCategory: _onSelectCategory,);
                },
              ),
            )
          ],
        ),
      );
  }

  void _onSelectCategory(BuildContext context, String title) {
    Navigator.pushNamed(
                      context, '/childScreen',
                      arguments : {'title' : title},
                    );
  }
}