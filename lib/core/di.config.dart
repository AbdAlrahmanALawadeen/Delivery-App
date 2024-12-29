// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:delivery_app/business_logic/cubit/filters_cubit.dart' as _i649;
import 'package:delivery_app/business_logic/cubit/local_cubit.dart' as _i317;
import 'package:delivery_app/data/respository/category_repository.dart'
    as _i720;
import 'package:delivery_app/data/web_services/dio.dart' as _i629;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i174.GetIt init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.singleton<_i629.WebServices>(() => _i629.WebServices());
    gh.singleton<_i720.CategoryRepository>(
        () => _i720.CategoryRepository(gh<_i629.WebServices>()));
    gh.singleton<_i649.FiltersCubit>(
        () => _i649.FiltersCubit(gh<_i720.CategoryRepository>()));
    gh.singleton<_i317.LocalCubit>(
        () => _i317.LocalCubit(gh<_i720.CategoryRepository>()));
    return this;
  }
}
