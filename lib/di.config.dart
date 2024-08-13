// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'features/data/data_sources/local/database_helper.dart' as _i3;
import 'features/data/data_sources/local/zlicense_data_source/zlicense_data_source.dart'
    as _i4;
import 'features/data/data_sources/local/zquestion_data_source/zquestion_data_source.dart'
    as _i5;
import 'features/data/repositories/zlicense_repository_impl.dart' as _i11;
import 'features/data/repositories/zquestion_repository_impl.dart' as _i7;
import 'features/domain/repositories/zlicense_repository/zlicense_repository.dart'
    as _i10;
import 'features/domain/repositories/zquestion_repository/zquestion_repository.dart'
    as _i6;
import 'features/domain/use_cases/zlicense_use_case/zlicense_use_case.dart'
    as _i12;
import 'features/domain/use_cases/zquestion_use_case.dart/zquestion_use_case.dart'
    as _i8;
import 'features/presentation/blocs/license/license_bloc.dart' as _i13;
import 'features/presentation/blocs/review_questions/review_questions_bloc.dart'
    as _i9;

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
  gh.lazySingleton<_i5.ZQuestionDataSource>(
      () => _i5.ZQuestionDataSourceImpl(gh<_i3.DatabaseHelper>()));
  gh.lazySingleton<_i6.ZQuestionRepository>(
      () => _i7.ZQuestionRepositoryImpl(gh<_i5.ZQuestionDataSource>()));
  gh.lazySingleton<_i8.ZQuestionUseCase>(
      () => _i8.ZQuestionUseCaseImpl(gh<_i6.ZQuestionRepository>()));
  gh.factory<_i9.ReviewQuestionsBloc>(
      () => _i9.ReviewQuestionsBloc(gh<_i6.ZQuestionRepository>()));
  gh.lazySingleton<_i10.ZLicenseRepository>(
      () => _i11.ZLicenseRepositoryImpl(gh<_i4.ZLicenseDataSource>()));
  gh.lazySingleton<_i12.ZLicenseUseCase>(
      () => _i12.ZLicenseUseCaseImpl(gh<_i10.ZLicenseRepository>()));
  gh.factory<_i13.LicenseBloc>(
      () => _i13.LicenseBloc(gh<_i10.ZLicenseRepository>()));
  return getIt;
}
