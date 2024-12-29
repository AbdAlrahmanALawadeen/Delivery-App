part of 'filters_cubit.dart';


@immutable
sealed class FiltersState {}

class FiltersInitial extends FiltersState {}

class FiltersLoading extends FiltersState {}

class FiltersLoaded extends FiltersState {
  final List<Filter> filters;

  FiltersLoaded(this.filters);
}

class FiltersError extends FiltersState {
  final String message;

  FiltersError(this.message);
}
