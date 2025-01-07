import 'package:delivery_app/data/models/category.dart';
import 'package:delivery_app/data/models/category_child.dart';
import 'package:delivery_app/data/models/filter.dart';
import 'package:delivery_app/internet/api_service.dart';
import 'package:injectable/injectable.dart';

@singleton
class CategoryRepository {
  ApiService apiService;
  CategoryRepository(this.apiService);

  Future<List<Category>> fetchCategories() async{
    final categories = await apiService.fetchCategories(); 
    return categories;
  }

  Future<List<Categorychild>> fetchCategoryChild() async{
    final categoryChildren = await apiService.fetchCategoryChild();
    return categoryChildren; 
  }

  Future<List> fetchImages() async{
    final images = await apiService.fetchImages();
    return images; 
  }

  Future<List<Filter>> fetchFilters() async {
    final filters = await apiService.fetchFilters();
    return filters;
  }
}