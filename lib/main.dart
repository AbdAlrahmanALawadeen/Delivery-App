import 'package:delivery_app/screens/categories_screen.dart';
import 'package:flutter/material.dart';
import 'package:delivery_app/data/data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CategoriesScreen(categories: categories),
    );
  }
}