import 'package:delivery_app/internet/api_service.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class RegisterModule {
  @LazySingleton()
  Dio get dio => Dio();

  @LazySingleton()
  ApiService get apiService => ApiService(Dio());
}