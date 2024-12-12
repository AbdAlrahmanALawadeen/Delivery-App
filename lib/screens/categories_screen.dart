import 'package:delivery_app/models/category.dart';
import 'package:delivery_app/widgets/search.dart';
import 'package:delivery_app/screens/child_screen.dart';
import 'package:delivery_app/widgets/category_item.dart';
import 'package:flutter/material.dart';

class CategoriesScreen extends StatelessWidget{
  const CategoriesScreen({super.key, required this.categories});

  final List<Category> categories;

  @override
  Widget build(BuildContext context) {

    Widget content = Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25,),

            const Search(),

            const SizedBox(height: 35,),

            Expanded(
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1.7 / 2,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                ),
                children: [
                  for(final item in categories)
                    CategoryItem(category: item, onSelectCategory: _onSelectCategory,),
                ],
              ),
            )
          ],
        ),
      );
      
    return Scaffold(
      
      backgroundColor: const Color.fromRGBO(246, 245, 245, 5),
      appBar: AppBar(
        title: const Text(
              'Categories', 
              style: TextStyle(
                fontSize: 30, 
                fontWeight: FontWeight.bold, 
                color:  Color.fromRGBO(45, 12, 87, 1),
              ), 
            ),
        backgroundColor: const Color.fromRGBO(246, 245, 245, 5),
      ),

      body: content,
      
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
  

  void _onSelectCategory(BuildContext context, String title) {
    Navigator.of(context).push(MaterialPageRoute(builder: (ctx) => ChildScreen(title: title)));
  }
}