import 'package:bloc/bloc.dart';
import 'package:delivery_app/data/models/category.dart';
import 'package:delivery_app/data/models/category_child.dart';
import 'package:delivery_app/data/respository/category_repository.dart';
import 'package:flutter/material.dart';

part 'local_state.dart';

class LocalCubit extends Cubit<LocalState> {
  final CategoryRepository categoryRepository;

  LocalCubit(this.categoryRepository) : super(LocalInitial());

  Future<void> fetchCategories() async {
    emit(LocalLoading());
    try {
      final categories = await categoryRepository.fetchCategories();
      emit(CategoriesLoaded(categories));
    } catch (e) {
      emit(LocalError("Failed to load categories: ${e.toString()}"));
    }
  }

  Future<void> fetchCategoryChild() async {
    emit(LocalLoading());
    try {
      final categoryChild = await categoryRepository.fetchCategoryChild();
      emit(CategoryChildLoaded(categoryChild));
    } catch (e) {
      emit(LocalError("Failed to load category children: ${e.toString()}"));
    }
  }

  Future<void> fetchImages() async {
    emit(LocalLoading());
    try {
      final images = await categoryRepository.fetchImages();
      print(images);
      emit(ImagesLoaded(images));
    } catch (e) {
      emit(LocalError("Failed to load images: ${e.toString()}"));
    }
  }
}
