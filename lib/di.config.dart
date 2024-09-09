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
import 'features/data/data_sources/local/znumberquestionpertype_data_source/znumberquestionpertype_data_source.dart'
    as _i6;
import 'features/data/data_sources/local/zquestion_data_source/zquestion_data_source.dart'
    as _i5;
import 'features/data/repositories/zlicense_repository_impl.dart' as _i13;
import 'features/data/repositories/znumberquestionpertype_repository_impl.dart'
    as _i8;
import 'features/data/repositories/zquestion_repository_impl.dart' as _i10;
import 'features/domain/repositories/zlicense_repository/zlicense_repository.dart'
    as _i12;
import 'features/domain/repositories/znumberquestionpertype_repository/znumberquestionpertype_repository.dart'
    as _i7;
import 'features/domain/repositories/zquestion_repository/zquestion_repository.dart'
    as _i9;
import 'features/domain/use_cases/zlicense_use_case/zlicense_use_case.dart'
    as _i14;
import 'features/domain/use_cases/znumberquestionpertype_use_case/znumberquestionpertype_use_case.dart'
    as _i16;
import 'features/domain/use_cases/zquestion_use_case.dart/zquestion_use_case.dart'
    as _i11;
import 'features/presentation/ui/home/blocs/home_bloc.dart' as _i17;
import 'features/presentation/ui/license/blocs/license/license_bloc.dart'
    as _i15;
import 'features/presentation/ui/review_questions/blocs/review_questions_action_bloc/review_questions_action_bloc.dart'
    as _i18;
import 'features/presentation/ui/review_questions/blocs/review_questions_bloc/review_questions_bloc.dart'
    as _i19;

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
  gh.lazySingleton<_i6.ZNumberQuestionPerTypeDataSource>(
      () => _i6.ZNumberQuestionPerTypeDataSourceImpl(gh<_i3.DatabaseHelper>()));
  gh.lazySingleton<_i7.ZNumberQuestionPerTypeRepository>(() =>
      _i8.ZNumberRepositoryRepositoryImpl(
          gh<_i6.ZNumberQuestionPerTypeDataSource>()));
  gh.lazySingleton<_i9.ZQuestionRepository>(
      () => _i10.ZQuestionRepositoryImpl(gh<_i5.ZQuestionDataSource>()));
  gh.lazySingleton<_i11.ZQuestionUseCase>(
      () => _i11.ZQuestionUseCaseImpl(gh<_i9.ZQuestionRepository>()));
  gh.lazySingleton<_i12.ZLicenseRepository>(
      () => _i13.ZLicenseRepositoryImpl(gh<_i4.ZLicenseDataSource>()));
  gh.lazySingleton<_i14.ZLicenseUseCase>(
      () => _i14.ZLicenseUseCaseImpl(gh<_i12.ZLicenseRepository>()));
  gh.factory<_i15.LicenseBloc>(
      () => _i15.LicenseBloc(gh<_i12.ZLicenseRepository>()));
  gh.lazySingleton<_i16.ZNumberQuestionPerTypeUseCase>(() =>
      _i16.ZNumberQuestionPerTypeUseCaseImpl(
          gh<_i7.ZNumberQuestionPerTypeRepository>()));
  gh.factory<_i17.HomeBloc>(
      () => _i17.HomeBloc(gh<_i16.ZNumberQuestionPerTypeUseCase>()));
  gh.factory<_i18.ReviewQuestionsActionBloc>(
      () => _i18.ReviewQuestionsActionBloc(gh<_i11.ZQuestionUseCase>()));
  gh.factory<_i19.ReviewQuestionsBloc>(
      () => _i19.ReviewQuestionsBloc(gh<_i11.ZQuestionUseCase>()));
  return getIt;
}
