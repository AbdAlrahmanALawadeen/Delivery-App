import 'package:delivery_app/presentation/widgets/categories_screen_content.dart';
import 'package:delivery_app/presentation/widgets/navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoriesScreen extends StatefulWidget{
  const CategoriesScreen({super.key,});

  @override
  State<CategoriesScreen> createState() => _CategoriesScreenState();
}

class _CategoriesScreenState extends State<CategoriesScreen> {
  @override
  Widget build(BuildContext context) {
      
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromRGBO(246, 245, 245, 1),
        appBar: AppBar(
          toolbarHeight: 60.h,
          title: Text(
            'Categories',
            style: GoogleFonts.roboto(
              textStyle: TextStyle(
                fontSize: 34.sp,
                fontWeight: FontWeight.w700,
                color: const Color.fromRGBO(45, 12, 87, 1),
              ),
            ),
          ),
          backgroundColor: const Color.fromRGBO(246, 245, 245, 1),
          forceMaterialTransparency: true,
          centerTitle: false, 
        ),
      
        body: const SafeArea(child: CategoriesScreenContent()),
        
        bottomNavigationBar: const CustomNavigationBar(),
      ),
    );
  }
}