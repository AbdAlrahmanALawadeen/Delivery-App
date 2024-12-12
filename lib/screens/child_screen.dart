import 'package:delivery_app/data/data.dart';
import 'package:delivery_app/widgets/category_children_items/child_screen_contnt.dart';
import 'package:flutter/material.dart';

class ChildScreen extends StatefulWidget{
  const ChildScreen({super.key, required this.title});

  final String title;
  
  @override
  State<ChildScreen> createState() {
    return _ChildScreenState();
  }
}

class _ChildScreenState extends State<ChildScreen>{
  _ChildScreenState();

  bool isPressed = false;
  
  @override
  Widget build(BuildContext context) {

    Widget content = ChildScreenContent(title: widget.title,);
    
    var children = categoryChildren.where((child) => child.parent == widget.title).toList();

    if(children.isEmpty){
      content = const Center(child: Text('No Items Found.'),);
    }
    
    return Scaffold(
      
      backgroundColor:  const Color.fromRGBO(246, 245, 245, 5),
      

      body: SizedBox(
        height: MediaQuery.sizeOf(context).height,
        child: content
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_4x4_outlined), 
            label: 'Grid',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined), 
            label: 'Stroller',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined), 
            label: 'Person',
          )
        ]
      ),
    );
  }
}