import 'package:delivery_app/gen/assets.gen.dart';
import 'package:delivery_app/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Search extends StatelessWidget{
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 374.w,
      height: 48.h,
      child: TextField(  
        decoration: InputDecoration(
          prefixIcon: Padding(
              padding: const EdgeInsets.all(12.0),
              child: SvgPicture.asset(
                Assets.images.search,
                width: 20.0, 
                height: 20.0, 
              ),
          ),
          hintText: 'Search',
          filled: true,  
          fillColor: Colors.white,
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(27), 
            borderSide: BorderSide(
              color: const Color.fromARGB(255, 62, 39, 92),
              width: 1.w,
            )
          ),
          hintStyle: TextStyle(
            color: const Color.fromRGBO(149, 134, 168, 1), 
            fontSize: 17.sp,
            fontFamily: FontFamily.sFProText,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(27), 
            borderSide: BorderSide(
              color: const Color.fromRGBO(217, 208, 227, 1), 
              width: 1.w
            )
          ),
        ),
      ),
    );
  }
}