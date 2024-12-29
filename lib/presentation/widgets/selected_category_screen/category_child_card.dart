import 'package:delivery_app/data/models/category_child.dart';
import 'package:delivery_app/gen/assets.gen.dart';
import 'package:delivery_app/gen/fonts.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class CategoryChildCard extends StatelessWidget{
  const CategoryChildCard({super.key, required this.child});

  final Categorychild child;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/details',
          arguments: {'child': child},
        );
      },
      child: Padding(
        padding: EdgeInsets.all(12.h),
        child: IntrinsicHeight(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 177.w,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: ExactAssetImage(child.link),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.only(left: 12.0.w, right: 12.0.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        child.title,
                        style: TextStyle(
                          color: const Color.fromRGBO(45, 12, 87, 1),
                          fontWeight: FontWeight.w600,
                          fontSize: 18.sp,
                          fontFamily: FontFamily.sFProText,
                        ),
                      ),
                      SizedBox(height: 12.h),
                      Row(
                        children: [
                          Text(
                            '€${child.price}',
                            style: TextStyle(
                              color: const Color.fromRGBO(45, 12, 87, 1),
                              fontFamily: FontFamily.sFProText,
                              fontSize: 22.sp,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Text(
                            ' / ${child.quantity}',
                            style: TextStyle(
                              color: const Color.fromRGBO(149, 134, 168, 1),
                              fontWeight: FontWeight.w400,
                              fontFamily: FontFamily.sFProText,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 20.h),
                      Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              height: 40.h,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                  backgroundColor: Colors.white,
                                ),
                                child: SvgPicture.asset(Assets.images.heart),
                              ),
                            ),
                          ),
                          SizedBox(width: 12.w),
                          Expanded(
                            flex: 1,
                            child: SizedBox(
                              height: 40.h,
                              child: ElevatedButton(
                                onPressed: () {},
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: const Color.fromRGBO(11, 206, 131, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5.0),
                                  ),
                                ),
                                child: SvgPicture.asset(Assets.images.shoppingCart),
                              ),
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
      ),
    );
  }

}