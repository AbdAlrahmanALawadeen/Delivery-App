import 'dart:convert';
import 'package:delivery_app/models/category.dart';
import 'package:delivery_app/models/category_child.dart';
import 'package:delivery_app/models/filter.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<List<Category>> fetchCategories() async {
    try {
      final response = await http.get(Uri.parse('http://10.10.9.196:3000/categories'));

      List<Category> categories = [];
      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        for(final item in data){
          categories.add(
            Category(number: item['number'], title: item['title'], link: item['link'])
          );
        }
        return categories;
      } else {
        throw Exception('Failed to fetch categories: ${response.statusCode} - ${response.reasonPhrase}');
      }
    } catch (e) {
      return Future.error('Error fetching categories: $e');
    }
  }

  Future<List<Categorychild>> fetchCategoryChild() async {
    try {
      final response = await http.get(Uri.parse('http://10.10.9.196:3000/categoryChildren'));

      List<Categorychild> categories = [];
      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        for(final item in data){
          categories.add(Categorychild(title: item['title'], price: item['price'], link: item['link'], parent: item['parent'], quantity: item['quantity'], description: item['description']));
        }
        return categories;
      } else {
        throw Exception('Failed to fetch category children: ${response.statusCode} - ${response.reasonPhrase}');
      }
    } catch (e) {
      return Future.error('Error fetching category children: $e');
    }
  }

  Future<List<Filter>> fetchFilters() async {
    try {
      final response = await http.get(Uri.parse('http://10.10.9.196:3000/filterChoices'));

      List<Filter> filters = [];
      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        for(final item in data){
          filters.add(Filter(parent: item['parent'], title: item['title'], number: item['number'], isPressed: item['isPressed'], showIcon: item['showIcon']));
        }
        return filters;
      } else {
        throw Exception('Failed to fetch filters: ${response.statusCode} - ${response.reasonPhrase}');
      }
    } catch (e) {
      return Future.error('Error fetching filters: $e');
    }
  }

  Future<List<String>> fetchImages() async {
    try {
      final response = await http.get(Uri.parse('http://10.10.9.196:3000/images'));

      List<String> images = [];
      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        for(final item in data){
          images.add(item);
        }
        return images;
      } else {
        throw Exception('Failed to fetch images: ${response.statusCode} - ${response.reasonPhrase}');
      }
    } catch (e) {
      return Future.error('Error fetching images: $e');
    }
  }
}