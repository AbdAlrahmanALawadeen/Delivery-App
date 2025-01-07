import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:delivery_app/business_logic/cubit/local_cubit.dart';
import 'package:delivery_app/data/respository/category_repository.dart';
import 'package:delivery_app/presentation/screens/categories_screen.dart';
import 'package:delivery_app/presentation/screens/selected_category_screen.dart';
import 'package:delivery_app/presentation/widgets/category_child_details/details.dart';

@injectable
class AppRouter {
  final CategoryRepository categoryRepository;

  AppRouter(this.categoryRepository);

  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => LocalCubit(categoryRepository),
            child: const CategoriesScreen(),
          ),
        );

      case '/childScreen':
        final args = settings.arguments as Map<String, dynamic>?;
        final title = args?['title'] as String? ?? 'No Title';
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => LocalCubit(categoryRepository),
            child: ChildScreen(title: title),
          ),
        );

      case '/details':
        final args = settings.arguments as Map<String, dynamic>?;
        final child = args?['child'] ?? 'No details available';
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => LocalCubit(categoryRepository),
            child: ShowDetails(child: child),
          ),
        );

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text('Page not found'),
            ),
          ),
        );
    }
  }
}
