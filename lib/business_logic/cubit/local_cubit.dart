import 'package:bloc/bloc.dart';
import 'package:delivery_app/data/models/category.dart';
import 'package:delivery_app/data/models/category_child.dart';
import 'package:delivery_app/data/respository/category_repository.dart';
import 'package:delivery_app/gen/error.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'local_state.dart';

@injectable
class LocalCubit extends Cubit<LocalState> {
  final CategoryRepository categoryRepository;
  LocalCubit(this.categoryRepository) : super(LocalInitial());

  Future<void> fetchCategories() async {
    emit(LocalLoading());
    try {
      final categories = await categoryRepository.fetchCategories();
      emit(CategoriesLoaded(categories));
    } catch (e) {
      emit(LocalError("$FAILED_FETCH_CATEGORIES_EXCEPTION: ${e.toString()}"));
    }
  }

  Future<void> fetchCategoryChild() async {
    emit(LocalLoading());
    try {
      final categoryChild = await categoryRepository.fetchCategoryChild();
      emit(CategoryChildLoaded(categoryChild));
    } catch (e) {
      emit(LocalError("$FAILED_FETCH_CATEGORY_CHILDREN_EXCEPTION: ${e.toString()}"));
    }
  }

  Future<void> fetchImages() async {
    emit(LocalLoading());
    try {
      final images = await categoryRepository.fetchImages();
      emit(ImagesLoaded(images));
    } catch (e) {
      emit(LocalError("$FAILED_FETCH_IMAGES_EXCEPTION: ${e.toString()}"));
    }
  }
}
