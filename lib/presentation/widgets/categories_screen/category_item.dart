import 'package:delivery_app/data/models/category.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryItem extends StatelessWidget{
  const CategoryItem({super.key, required this.category, required this.onSelectCategory});

  final Category category;
  final void Function(BuildContext context, String title) onSelectCategory;

  @override
  Widget build(BuildContext context) {
    
    return Container(
      height: 211.h,
      width: 177.w,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(Radius.circular(8.0.r)),
      ),
      child: InkWell(
        onTap: () {
          Navigator.pushNamed(
            context, '/childScreen',
            arguments: {'title' : category.title},
          );
        },
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 177.w,
              height: 140.h,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: ExactAssetImage(category.link,),
                  fit: BoxFit.cover,
                ),
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(8.0.r), topRight: Radius.circular(8.0.r)),
              ),
            ),
        
            SizedBox(height: 10.h,),
        
            Padding(
              padding: EdgeInsets.only(left: 16.0.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category.title, 
                    style: GoogleFonts.roboto(
                      textStyle:  TextStyle(
                        fontSize: 18.sp, 
                        fontWeight: FontWeight.w700, 
                        color: const Color.fromRGBO(45, 12, 87, 1), 
                      ), 
                    ),              
                  ),
                                    
                  Text(
                    '(${category.number.toString()})', 
                    style: GoogleFonts.roboto(
                      textStyle:  TextStyle(
                        fontSize: 12.sp, 
                        fontWeight: FontWeight.w400, 
                        color: const Color.fromRGBO(149, 134, 168, 1), 
                      ), 
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  } 
}