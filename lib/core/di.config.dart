// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:delivery_app/app_router.dart' as _i1054;
import 'package:delivery_app/business_logic/cubit/filters_cubit.dart' as _i649;
import 'package:delivery_app/business_logic/cubit/local_cubit.dart' as _i317;
import 'package:delivery_app/data/respository/category_repository.dart'
    as _i720;
import 'package:delivery_app/data/web_services/dio.dart' as _i629;
import 'package:delivery_app/gen/register_module.dart' as _i1055;
import 'package:delivery_app/internet/api_service.dart' as _i885;
import 'package:dio/dio.dart' as _i361;
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
    final registerModule = _$RegisterModule();
    gh.singleton<_i629.WebServices>(() => _i629.WebServices());
    gh.lazySingleton<_i361.Dio>(() => registerModule.dio);
    gh.lazySingleton<_i885.ApiService>(() => registerModule.apiService);
    gh.singleton<_i720.CategoryRepository>(
        () => _i720.CategoryRepository(gh<_i885.ApiService>()));
    gh.factory<_i317.LocalCubit>(
        () => _i317.LocalCubit(gh<_i720.CategoryRepository>()));
    gh.factory<_i1054.AppRouter>(
        () => _i1054.AppRouter(gh<_i720.CategoryRepository>()));
    gh.singleton<_i649.FiltersCubit>(
        () => _i649.FiltersCubit(gh<_i720.CategoryRepository>()));
    return this;
  }
}

class _$RegisterModule extends _i1055.RegisterModule {}
