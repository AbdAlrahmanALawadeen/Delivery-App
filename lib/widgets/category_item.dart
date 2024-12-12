import 'package:delivery_app/models/category.dart';
import 'package:delivery_app/screens/child_screen.dart';
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget{
  const CategoryItem({super.key, required this.category, required this.onSelectCategory});

  final Category category;
  final void Function(BuildContext context, String title) onSelectCategory;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => ChildScreen(title: category.title,)));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(category.link),
      
            const SizedBox(height: 5,),
      
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    category.title, 
                    style: const TextStyle(
                      color: Color.fromRGBO(45, 12, 87, 1), 
                      fontSize: 25, 
                      fontWeight: FontWeight.bold
                    ),
                  ),
      
                  const SizedBox(height: 2,),
                  
                  Text(
                    '(${category.number.toString()})', 
                    style: const TextStyle(
                      color: Colors.grey
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  } 
}