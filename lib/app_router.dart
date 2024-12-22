import 'package:delivery_app/business_logic/cubit/local_cubit.dart';
import 'package:delivery_app/data/respository/category_repository.dart';
import 'package:delivery_app/data/web_services/dio.dart';
import 'package:delivery_app/presentation/screens/categories_screen.dart';
import 'package:delivery_app/presentation/screens/selected_category_screen.dart';
import 'package:delivery_app/presentation/widgets/category_children/details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {

  late CategoryRepository categoryRepository;
  late LocalCubit localCubit;

  AppRouter(){
    categoryRepository = CategoryRepository(WebServices());
    localCubit = LocalCubit(categoryRepository);
  }

  Route? generateRoute(RouteSettings settings){
    switch(settings.name){
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) =>
              LocalCubit(categoryRepository),
            child: const CategoriesScreen(),
          )
        );
      
      case '/childScreen':
        final args = settings.arguments as Map<String, dynamic>?; 
        final title = args?['title'] as String? ?? 'No Title';
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => LocalCubit(categoryRepository),
            child: ChildScreen(title: title),
          ),
        );

        case '/details':
        final args = settings.arguments as Map<String, dynamic>?; 
        final child = args?['child'] ?? 'There is no details for this item';
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (BuildContext context) => LocalCubit(categoryRepository),
            child: ShowDetails(child : child),
          ),
        );
    }
    return null;
  }
}