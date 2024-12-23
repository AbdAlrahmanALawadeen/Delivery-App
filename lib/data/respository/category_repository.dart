import 'package:delivery_app/data/models/category.dart';
import 'package:delivery_app/data/models/category_child.dart';
import 'package:delivery_app/data/models/filter.dart';
import 'package:delivery_app/data/web_services/dio.dart';

class CategoryRepository {
  final WebServices webServices;
  CategoryRepository(this.webServices);

  Future<List<Category>> fetchCategories() async{
    final categories = await webServices.fetchCategories(); 
    return categories.map((category) => Category.fromJson(category)).toList();
  }

  Future<List<Categorychild>> fetchCategoryChild() async{
    final categoryChildren = await webServices.fetchCategoryChild();
    return categoryChildren.map((categoryChild) => Categorychild.fromJson(categoryChild)).toList(); 
  }

  Future<List> fetchImages() async{
    final images = await webServices.fetchImages();
    return images; 
  }

  Future<List<Filter>> fetchFilters() async {
    final filters = await webServices.fetchFilters();
    return filters.map((filter) => Filter.fromJson(filter)).toList(); 
  }
}