part of 'local_cubit.dart';

@immutable
sealed class LocalState {}

final class LocalInitial extends LocalState {}

final class LocalLoading extends LocalState {}

class CategoriesLoaded extends LocalState {
  final List<Category> categories;

  CategoriesLoaded(this.categories);
}

class CategoryChildLoaded extends LocalState {
  final List<Categorychild> categoryChild;

  CategoryChildLoaded(this.categoryChild);
}

class ImagesLoaded extends LocalState {
  final List<dynamic> images;

  ImagesLoaded(this.images);
}

final class LocalError extends LocalState {
  final String message;

  LocalError(this.message);
}
