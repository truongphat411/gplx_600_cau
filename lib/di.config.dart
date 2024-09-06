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
import 'features/data/repositories/zlicense_repository_impl.dart' as _i10;
import 'features/data/repositories/zquestion_repository_impl.dart' as _i7;
import 'features/domain/repositories/zlicense_repository/zlicense_repository.dart'
    as _i9;
import 'features/domain/repositories/zquestion_repository/zquestion_repository.dart'
    as _i6;
import 'features/domain/use_cases/zlicense_use_case/zlicense_use_case.dart'
    as _i11;
import 'features/domain/use_cases/zquestion_use_case.dart/zquestion_use_case.dart'
    as _i8;
import 'features/presentation/ui/license/blocs/license/license_bloc.dart'
    as _i12;
import 'features/presentation/ui/review_questions/blocs/review_questions_action_bloc/review_questions_action_bloc.dart'
    as _i13;
import 'features/presentation/ui/review_questions/blocs/review_questions_bloc/review_questions_bloc.dart'
    as _i14;

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
  gh.lazySingleton<_i9.ZLicenseRepository>(
      () => _i10.ZLicenseRepositoryImpl(gh<_i4.ZLicenseDataSource>()));
  gh.lazySingleton<_i11.ZLicenseUseCase>(
      () => _i11.ZLicenseUseCaseImpl(gh<_i9.ZLicenseRepository>()));
  gh.factory<_i12.LicenseBloc>(
      () => _i12.LicenseBloc(gh<_i9.ZLicenseRepository>()));
  gh.factory<_i13.ReviewQuestionsActionBloc>(
      () => _i13.ReviewQuestionsActionBloc(gh<_i8.ZQuestionUseCase>()));
  gh.factory<_i14.ReviewQuestionsBloc>(
      () => _i14.ReviewQuestionsBloc(gh<_i8.ZQuestionUseCase>()));
  return getIt;
}
