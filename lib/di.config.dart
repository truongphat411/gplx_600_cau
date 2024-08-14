// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'features/data/data_sources/local/database_helper.dart' as _i4;
import 'features/data/data_sources/local/zlicense_data_source/zlicense_data_source.dart'
    as _i5;
import 'features/data/data_sources/local/zquestion_data_source/zquestion_data_source.dart'
    as _i6;
import 'features/data/repositories/zlicense_repository_impl.dart' as _i12;
import 'features/data/repositories/zquestion_repository_impl.dart' as _i8;
import 'features/domain/repositories/zlicense_repository/zlicense_repository.dart'
    as _i11;
import 'features/domain/repositories/zquestion_repository/zquestion_repository.dart'
    as _i7;
import 'features/domain/use_cases/zlicense_use_case/zlicense_use_case.dart'
    as _i13;
import 'features/domain/use_cases/zquestion_use_case.dart/zquestion_use_case.dart'
    as _i9;
import 'features/presentation/ui/license/blocs/license/license_bloc.dart'
    as _i14;
import 'features/presentation/ui/review_questions/blocs/question_cubit/question_cubit.dart'
    as _i3;
import 'features/presentation/ui/review_questions/blocs/review_questions_bloc/review_questions_bloc.dart'
    as _i10;

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
  gh.factory<_i3.QuestionCubit>(() => _i3.QuestionCubit());
  gh.lazySingleton<_i4.DatabaseHelper>(() => _i4.DatabaseHelper());
  gh.lazySingleton<_i5.ZLicenseDataSource>(
      () => _i5.ZLicenseDataSourceImpl(gh<_i4.DatabaseHelper>()));
  gh.lazySingleton<_i6.ZQuestionDataSource>(
      () => _i6.ZQuestionDataSourceImpl(gh<_i4.DatabaseHelper>()));
  gh.lazySingleton<_i7.ZQuestionRepository>(
      () => _i8.ZQuestionRepositoryImpl(gh<_i6.ZQuestionDataSource>()));
  gh.lazySingleton<_i9.ZQuestionUseCase>(
      () => _i9.ZQuestionUseCaseImpl(gh<_i7.ZQuestionRepository>()));
  gh.factory<_i10.ReviewQuestionsBloc>(
      () => _i10.ReviewQuestionsBloc(gh<_i7.ZQuestionRepository>()));
  gh.lazySingleton<_i11.ZLicenseRepository>(
      () => _i12.ZLicenseRepositoryImpl(gh<_i5.ZLicenseDataSource>()));
  gh.lazySingleton<_i13.ZLicenseUseCase>(
      () => _i13.ZLicenseUseCaseImpl(gh<_i11.ZLicenseRepository>()));
  gh.factory<_i14.LicenseBloc>(
      () => _i14.LicenseBloc(gh<_i11.ZLicenseRepository>()));
  return getIt;
}
