import 'package:flutter/material.dart';

class Search extends StatelessWidget{
  const Search({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(  
      
      decoration: InputDecoration(
        prefixIcon: const Icon(Icons.search),
        hintText: 'Search',
        filled: true,  
        fillColor: Colors.white,
        hintStyle: const TextStyle(color: Colors.grey, fontSize: 20,),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(40), 
          borderSide: const BorderSide(
            color: Colors.white, 
            width: 2.0
          )
        ),
      ),
    );
  }
}