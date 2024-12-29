import 'package:delivery_app/data/respository/category_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';
import 'package:delivery_app/data/models/filter.dart';


part 'filters_state.dart';

@singleton
class FiltersCubit extends Cubit<FiltersState> {
  final CategoryRepository categoryRepository;

  FiltersCubit(this.categoryRepository) : super(FiltersInitial());

  Future<void> fetchFilters() async {
    emit(FiltersLoading());
    try {
      final filters = await categoryRepository.fetchFilters();
      emit(FiltersLoaded(filters));
    } catch (e) {
      emit(FiltersError("Failed to fetch filters: ${e.toString()}"));
    }
  }
}
