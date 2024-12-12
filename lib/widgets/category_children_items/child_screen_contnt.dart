import 'package:delivery_app/widgets/category_children_items/category_children.dart';
import 'package:delivery_app/widgets/filters.dart';
import 'package:delivery_app/widgets/search.dart';
import 'package:flutter/material.dart';
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
          children : [
            Categorychildren(title : widget.title),
            
            Center(
              child: Column(
                
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
              
                  SizedBox(
                    height: 250,
                    width: MediaQuery.sizeOf(context).width,
                    child: Stack(
                      children:[
                        Positioned(
                          top: 20,
                          left: 0.0,
                          child: IconButton(
                            onPressed: (){
                              Navigator.of(context).pop();
                            }, 
                            icon: const Icon(Icons.arrow_back_ios_sharp)
                          )
                        ),
                        Positioned(
                          top: 70.0,
                          child: Text(
                            widget.title, 
                            style: const TextStyle(
                              color: Color.fromRGBO(45, 12, 87, 1), 
                              fontSize: 30, fontWeight: 
                              FontWeight.bold
                            ),
                          )
                        ),

                        Positioned(
                          right: 0.0,
                          child: SvgPicture.asset('assets/images/Vector.svg',)
                        ),
                        
                        
                         const Positioned(
                          bottom: 20.0,
                          right: 10.0,
                          left: 0.0,
                          child: Search()
                        ),
                      ] 
                    ),
                  ),

                  const SizedBox(height: 20,),
              
                  Filters(parent: widget.title,),
              
                  const SizedBox(height: 35,),
                ],
              ),
            ),
          ]
        ),
      );
  }
  
}