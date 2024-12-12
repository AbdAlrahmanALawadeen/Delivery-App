import 'package:delivery_app/models/category_child.dart';
import 'package:delivery_app/widgets/category_child_details/description.dart';
import 'package:delivery_app/widgets/category_child_details/images.dart';
import 'package:flutter/material.dart';

class ShowDetails extends StatelessWidget{
  const ShowDetails({super.key, required this.categorychild});

  final Categorychild categorychild;
  

  @override
  Widget build(BuildContext context) {

    Widget content = SizedBox(
          height: MediaQuery.sizeOf(context).height,
          child:  Stack(
            children: [
              const Images(),
              // todo
              Description(categoryChild: categorychild)
            ],
          )
        );
        
    if(categorychild.title != 'Boston Lettuce'){
      content = const Text('No Items found');
    }

    return Scaffold(
      body :  Center(    
        child: content,
      ),
    );
  }
}