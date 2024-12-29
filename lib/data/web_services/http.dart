import 'dart:convert';
import 'package:delivery_app/data/models/category.dart';
import 'package:delivery_app/data/models/category_child.dart';
import 'package:delivery_app/data/models/filter.dart';
import 'package:delivery_app/gen/api.dart';
import 'package:delivery_app/gen/error.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<List<Category>> fetchCategories() async {
    try {
      final response = await http.get(Uri.parse('${baseUrl}categories'));

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
        throw Exception('$FAILED_FETCH_CATEGORIES_EXCEPTION: ${response.statusCode} - ${response.reasonPhrase}');
      }
    } catch (e) {
      return Future.error('$FAILED_FETCH_CATEGORIES_EXCEPTION: $e');
    }
  }

  Future<List<Categorychild>> fetchCategoryChild() async {
    try {
      final response = await http.get(Uri.parse('${baseUrl}categoryChildren'));

      List<Categorychild> categories = [];
      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        for(final item in data){
          categories.add(Categorychild(title: item['title'], price: item['price'], link: item['link'], parent: item['parent'], quantity: item['quantity'], description: item['description']));
        }
        return categories;
      } else {
        throw Exception('$FAILED_FETCH_CATEGORY_CHILDREN_EXCEPTION: ${response.statusCode} - ${response.reasonPhrase}');
      }
    } catch (e) {
      return Future.error('$FAILED_FETCH_CATEGORY_CHILDREN_EXCEPTION: $e');
    }
  }

  Future<List<Filter>> fetchFilters() async {
    try {
      final response = await http.get(Uri.parse('${baseUrl}filterChoices'));

      List<Filter> filters = [];
      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        for(final item in data){
          filters.add(Filter(parent: item['parent'], title: item['title'], number: item['number'], isPressed: item['isPressed'], showIcon: item['showIcon']));
        }
        return filters;
      } else {
        throw Exception('$FAILED_FETCH_FILTERS_EXCEPTION: ${response.statusCode} - ${response.reasonPhrase}');
      }
    } catch (e) {
      return Future.error('$FAILED_FETCH_FILTERS_EXCEPTION: $e');
    }
  }

  Future<List<String>> fetchImages() async {
    try {
      final response = await http.get(Uri.parse('${baseUrl}images'));

      List<String> images = [];
      if (response.statusCode == 200) {
        List<dynamic> data = json.decode(response.body);
        for(final item in data){
          images.add(item);
        }
        return images;
      } else {
        throw Exception('$FAILED_FETCH_IMAGES_EXCEPTION: ${response.statusCode} - ${response.reasonPhrase}');
      }
    } catch (e) {
      return Future.error('$FAILED_FETCH_IMAGES_EXCEPTION: $e');
    }
  }
}