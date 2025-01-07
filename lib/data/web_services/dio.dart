import 'package:delivery_app/gen/api.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@singleton
class WebServices{
  late Dio dio;

  WebServices(){
    BaseOptions options = BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
      connectTimeout: const Duration(seconds: 10),
      receiveTimeout: const Duration(seconds: 10),

    );
    dio = Dio(options);
  } 

  Future<List<dynamic>> fetchCategories() async{
    try{
      Response response = await dio.get('categories');
      return response.data;
    }
    catch(e){
      return [];
    }
    
  }

  Future<List<dynamic>> fetchCategoryChild() async{
    try{
      Response response = await dio.get('categoryChildren');
      return response.data;
    }
    catch(e){
      return [];
    }
  }

  Future<List<dynamic>> fetchImages() async{
    try{
      Response response = await dio.get('images');
      return response.data;
    }
    catch(e){
      return [];
    }
  }

  Future<List<dynamic>> fetchFilters() async{
    try{
      Response response = await dio.get('filters');
      return response.data;
    }
    catch(e){
      return [];
    }
  }
}