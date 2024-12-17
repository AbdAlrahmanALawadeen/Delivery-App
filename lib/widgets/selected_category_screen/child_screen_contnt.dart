import 'package:delivery_app/widgets/filters.dart';
import 'package:delivery_app/widgets/search.dart';
import 'package:delivery_app/widgets/selected_category_screen/category_children.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class ChildScreenContent extends StatefulWidget{
  const ChildScreenContent({super.key, required this.title});

  final String title;

  @override
  State<ChildScreenContent> createState() {
    return _ChildScreenContentState();
  }

}

class _ChildScreenContentState extends State<ChildScreenContent>{

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: Stack(
        children: [
          Positioned(
            right: 0.0.h,
            top: -10.0.h,
            child: SvgPicture.asset(
              'assets/images/Vector.svg',    
              fit: BoxFit.cover,
            )
          ),

          Positioned(
            left: -20.0.w,
            top: 42.h,
            child: IconButton(       
              onPressed: (){
                Navigator.of(context).pop();
              }, 
              icon: SvgPicture.asset(
                'assets/images/arrow_back.svg',
              ),
            )
          ),

          Positioned(
            top: 97.h,
            left: 0.0.w,
            child: Text(
              widget.title,
              style: TextStyle(
                fontFamily: 'SFProDisplay',
                fontSize: 30.sp,
                fontWeight: FontWeight.w700,
              ),
            )
          ),

          Positioned(
            top: 165.h,
            right: 10.h,
            left: 0.h,
            child: const Search(),
          ),

          Positioned(
            top: 250.h,
            child: Filters(parent: widget.title,)
          ),

          Positioned(
            top: 323.h,
            child: Categorychildren(title : widget.title)
          ),
        ],
      )
    );
  }
}