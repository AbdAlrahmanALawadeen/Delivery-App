import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Skeleton extends StatelessWidget{
  const Skeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const ClampingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        mainAxisSpacing: 20.h,
        crossAxisCount: 2,
        crossAxisSpacing: 20.w,
        mainAxisExtent: 211.h,
      ),
      itemCount: 6, 
      itemBuilder: (context, index) {
        return Padding(
          padding: EdgeInsets.all(8.h),
          child: Column(
            children: [
              Container(
                height: 120.h,
                width: double.infinity,
                color: Colors.grey[300], 
              ),
              SizedBox(height: 10.h),
              Container(
                height: 20.h,
                width: 100.w,
                color: Colors.grey[300],
              ),
              SizedBox(height: 6.h),
              Container(
                height: 20.h,
                width: 80.w,
                color: Colors.grey[300],
              ),
            ],
          ),
        );
      },
    );
  }

}