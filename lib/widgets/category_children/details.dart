import 'package:delivery_app/models/category_child.dart';
import 'package:delivery_app/widgets/category_children/description.dart';
import 'package:delivery_app/widgets/category_children/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ShowDetails extends StatelessWidget{
  const ShowDetails({super.key});
  

  @override
  Widget build(BuildContext context) {

    
    final Map<String, Categorychild> args = ModalRoute.of(context)!.settings.arguments as Map<String, Categorychild>;

    Categorychild categoryChild = args['child']!;
     

    Widget content = SizedBox(
          height: MediaQuery.sizeOf(context).height,
          child:  Stack(
            children: [
              const Images(),
              // todo
              Description(categoryChild: categoryChild)
            ],
          )
        );
        
    if(categoryChild.title != 'Boston Lettuce'){
      content = Text(
        'No Items found',
        style: TextStyle(
          fontSize: 30.sp,
          fontFamily: 'SFProText',
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