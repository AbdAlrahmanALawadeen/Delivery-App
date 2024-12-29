import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Skeleton extends StatelessWidget {
  const Skeleton({super.key, this.height, this.width});

  final double? height, width;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height * 0.45,
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: EdgeInsets.all(12.h),
            child: IntrinsicHeight(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 177.w,
                    height: 100.h,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.only(left: 12.0.w, right: 12.0.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 20.h,
                            width: double.infinity,
                            color: Colors.grey[300],
                          ),
                          SizedBox(height: 12.h),
                          Container(
                            height: 20.h,
                            width: 100.w,
                            color: Colors.grey[300],
                          ),
                          SizedBox(height: 20.h),
                          Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: 40.h,
                                  color: Colors.grey[300],
                                ),
                              ),
                              SizedBox(width: 12.w),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  height: 40.h,
                                  color: Colors.grey[300],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}