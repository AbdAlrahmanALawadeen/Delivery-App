import 'package:delivery_app/business_logic/cubit/local_cubit.dart';
import 'package:delivery_app/data/respository/category_repository.dart';
import 'package:delivery_app/data/web_services/dio.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;


Future<void> setupLocator() async{
  locator.registerSingleton<WebServices>(WebServices());

  locator.registerSingleton<CategoryRepository>(CategoryRepository(locator<WebServices>()));

  locator.registerSingleton<LocalCubit>(LocalCubit(locator<CategoryRepository>()));
}