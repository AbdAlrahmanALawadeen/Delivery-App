



import 'package:delivery_app/data/models/category.dart';
import 'package:delivery_app/data/models/category_child.dart';
import 'package:delivery_app/data/models/filter.dart';
import 'package:delivery_app/gen/api.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio) = _ApiService;

  @GET('/categories')
  Future<List<Category>> fetchCategories();

  @GET('categoryChildren')
  Future<List<Categorychild>> fetchCategoryChild();

  @GET('images')
  Future<List<String>> fetchImages();

  @GET('filters')
  Future<List<Filter>> fetchFilters();
  
}


