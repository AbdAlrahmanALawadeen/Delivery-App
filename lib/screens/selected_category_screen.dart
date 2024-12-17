import 'package:delivery_app/data/data.dart';
import 'package:delivery_app/widgets/navigation_bar.dart';
import 'package:delivery_app/widgets/selected_category_screen/child_screen_contnt.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChildScreen extends StatefulWidget{
  const ChildScreen({super.key});


  @override
  State<ChildScreen> createState() {
    return _ChildScreenState();
  }
}

class _ChildScreenState extends State<ChildScreen>{
  _ChildScreenState();

  String title = '';

  bool isPressed = false;
  
  @override
  void didChangeDependencies(){
    super.didChangeDependencies();

    final Map<String, String> args = ModalRoute.of(context)!.settings.arguments as Map<String, String>;
    title = args['title']!;
  }

  @override
  Widget build(BuildContext context) {

    Widget content = ChildScreenContent(title: title,);
    
    var children = categoryChildren.where((child) => child.parent == title).toList();

    if(children.isEmpty){
      content = Center(
        child: Text('No Items Found.',
        style: TextStyle(
          fontFamily: 'SFProText',
          fontSize: 30.sp,
        ),
      ),
      );
    }
    
    return SafeArea(
      child: Scaffold(
        
        backgroundColor:  const Color.fromRGBO(246, 245, 245, 5),
        
      
        body: SizedBox(
          child: content
        ),

        bottomNavigationBar: const CustomNavigationBar(),
      ),
    );
  }
}