// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'features/data/data_sources/db/database_helper.dart' as _i3;
import 'features/data/data_sources/zlicense_data_source/zlicense_data_source.dart'
    as _i4;
import 'features/data/repositories/zlicense_repository_impl.dart' as _i6;
import 'features/domain/repositories/zlicense_repository/zlicense_repository.dart'
    as _i5;
import 'features/domain/use_cases/zlicense_use_case/zlicense_use_case.dart'
    as _i7;
import 'features/presentation/blocs/zlicense/zlicense_bloc.dart' as _i8;

// initializes the registration of main-scope dependencies inside of GetIt
_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.lazySingleton<_i3.DatabaseHelper>(() => _i3.DatabaseHelper());
  gh.lazySingleton<_i4.ZLicenseDataSource>(
      () => _i4.ZLicenseDataSourceImpl(gh<_i3.DatabaseHelper>()));
  gh.lazySingleton<_i5.ZLicenseRepository>(
      () => _i6.ZLicenseRepositoryImpl(gh<_i4.ZLicenseDataSource>()));
  gh.lazySingleton<_i7.ZLicenseUseCase>(
      () => _i7.ZLicenseUseCaseImpl(gh<_i5.ZLicenseRepository>()));
  gh.factory<_i8.ZLicenseBloc>(
      () => _i8.ZLicenseBloc(gh<_i5.ZLicenseRepository>()));
  return getIt;
}
