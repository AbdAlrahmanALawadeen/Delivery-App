import 'package:delivery_app/gen/fonts.gen.dart';
import 'package:delivery_app/data/models/category_child.dart';
import 'package:delivery_app/presentation/widgets/category_child_details/description.dart';
import 'package:delivery_app/presentation/widgets/category_child_details/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowDetails extends StatelessWidget{
  const ShowDetails({super.key, required this.child});

  final Categorychild child;
  

  @override
  Widget build(BuildContext context) {     

    Widget content = SizedBox(
          height: MediaQuery.sizeOf(context).height,
          child:  Stack(
            children: [
              Positioned(
                top: 0.0.h,
                child: const Images()
              ),
             Positioned(
                top: 281.h,
                child: Description(categoryChild: child)
              )
            ],
          )
        );
        
    if(child.title != 'Boston Lettuce'){
      content = Text(
        'No Items found',
        style: TextStyle(
          fontSize: 30.sp,
          fontFamily: FontFamily.sFProText,
        ),
      );
    }

    return Scaffold(
      body :  Center(    
        child: content,
      ),
    );
  }
}