import 'package:delivery_app/data/web_services/http.dart';
import 'package:delivery_app/gen/fonts.gen.dart';
import 'package:delivery_app/data/models/filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Filters extends StatefulWidget{
  const Filters({super.key, required this.parent});

  final String parent;

  @override
  State<Filters> createState() {
    return _Filters();
  }

}

class _Filters extends State<Filters>{

  List<Filter> filterChoices = [];

  @override
  void initState(){
    super.initState();
    startApp();
  }

  void startApp() async {
    final Api api = Api();

    try {
      var data = await api.fetchFilters();
      setState(() {
        filterChoices = data;
      });
    } 
    catch (e) {
      filterChoices = [];
    }
  }

  @override
  Widget build(BuildContext context) {

    List<Filter> children = filterChoices.where((child) => child.parent == widget.parent).toList();

    return SizedBox(
      height: 34.h, 
      width: MediaQuery.sizeOf(context).width,
      child: ListView.builder( 
        scrollDirection: Axis.horizontal,
        itemCount: children.length,
        itemBuilder: (BuildContext context, int index) { 
          return Container(
            margin: const EdgeInsets.only(left: 10),
            child: ElevatedButton.icon(
              icon: children[index].showIcon == true ? const Icon(Icons.check) : null,
              style: ElevatedButton.styleFrom(
                backgroundColor: ((children[index].isPressed) == true ? const Color.fromRGBO(226, 203, 255, 1) : Colors.white),
              
              ),
              onPressed: (){
                setState(() {
                  children[index].showIcon = children[index].showIcon == true ? false : true;
                  children[index].isPressed = ((children[index].isPressed) == true ? false : true);
                });
              }, 
              label: Text(
                '${children[index].title} (${children[index].number})', 
                style: TextStyle(
                  color: (children[index].isPressed) == true ? const Color.fromRGBO(45, 12, 87, 1) : const Color.fromRGBO(149, 134, 168, 1),    
                  fontFamily: FontFamily.sFProText 
                ),
              ),   
            ),
          );
        },
      ),
    );
  }
}