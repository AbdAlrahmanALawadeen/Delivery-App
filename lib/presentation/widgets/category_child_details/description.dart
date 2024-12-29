import 'package:delivery_app/gen/fonts.gen.dart';
import 'package:delivery_app/data/models/category_child.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Description extends StatefulWidget{
  const Description({super.key, required this.categoryChild});

  final Categorychild categoryChild;

  @override
  State<StatefulWidget> createState() {
    return _Description();
  }
}

class _Description extends State<Description>{
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width,
      height: MediaQuery.sizeOf(context).height - 77.h,
      decoration: BoxDecoration(
        color: const Color.fromRGBO(246, 245, 245, 1),
        borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0.r), topRight: Radius.circular(20.0.r)),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.0.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 27.h,),
            
            Text(
              widget.categoryChild.title, 
              style: TextStyle(
                color: const Color.fromRGBO(45, 12, 87, 1), 
                fontSize: 30.sp,
                fontWeight: FontWeight.w700,
                fontFamily: FontFamily.sFProDisplay,
              ), 
            ),
            
            SizedBox(height: 16.h,),
            
            SizedBox(
              height: 44.h,
              child: Row(
                children: [
                Text(
                  widget.categoryChild.price.toStringAsFixed(2), 
                  style: TextStyle(
                    color: const Color.fromRGBO(45, 12, 87, 1), 
                    fontSize: 32.sp, 
                    fontWeight: FontWeight.w700,
                    fontFamily: FontFamily.sFProText,
                  ),
                ),
              
                Text(
                  ' \u20AC/${widget.categoryChild.quantity}', 
                  style: TextStyle(
                    color: Colors.grey, 
                    fontSize: 24.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: FontFamily.sFProText,
                  ),
                )
                ],
              ),
            ),
            
            SizedBox(height: 8.h,),
            
            Row(
              children: [
              Text(
                '~150 gr/${widget.categoryChild.quantity}', 
                style: TextStyle(
                  color: const Color.fromRGBO(6, 190, 119, 1), 
                  fontSize: 17.sp, 
                  fontWeight: FontWeight.w500,
                  fontFamily: FontFamily.sFProText,
                ),
              ),
              ],
            ),
            
            SizedBox(height: 32.h),
            
            Text(
              'Spain', 
              style : TextStyle(
                color: const Color.fromRGBO(45, 12, 87, 1), 
                fontSize: 22.sp,
                fontWeight: FontWeight.w700,
                fontFamily: FontFamily.sFProText,
              )
            ),
            
            SizedBox(height: 16.h,),
            
            SizedBox(
              height: 194.h,
              child: SingleChildScrollView(
                child: Text(
                  widget.categoryChild.description ,
                  style: TextStyle(
                    color: Colors.grey, 
                    fontSize: 17.sp,
                    fontWeight: FontWeight.w400,
                    fontFamily: FontFamily.sFProText,
                  ),
                ),
              ),
            ),
            
            SizedBox(height: 56.h,),
            
            Row(
              children: [
                Expanded( 
                  flex: 1,
                  child: Container(
                    margin: EdgeInsets.only(right: 30.w),
                    height: 56.h,
                    child: ElevatedButton(       
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0.r),          
                        ),
                        backgroundColor: Colors.white
                      ), 
                      child: SvgPicture.asset(
                        'assets/images/heart.svg'
                      )
                    ),
                  ),
                ),
                
                SizedBox(width: 8.0.w,),
                
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    height: 56.h,
                    child: ElevatedButton.icon(            
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromRGBO(11, 206, 131, 1),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0.r),
                        )
                      ), 
                      icon: SvgPicture.asset(
                        'assets/images/shopping-cart.svg'
                      ),
                      label: Text(
                        'ADD TO CART', 
                        style: TextStyle(
                          color: Colors.white,
                          fontFamily: FontFamily.sFProText,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}