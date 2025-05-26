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
import 'features/data/data_sources/local/license_data_source/license_data_source.dart'
    as _i9;
import 'features/data/data_sources/local/question_data_source/question_data_source.dart'
    as _i5;
import 'features/data/data_sources/local/question_type_data_source/question_type_data_source.dart'
    as _i8;
import 'features/data/data_sources/local/table_notice_board_data_source/table_noice_board_data_source.dart'
    as _i6;
import 'features/data/data_sources/local/table_notice_board_type_data_source/table_notice_board_type_data_source.dart'
    as _i4;
import 'features/data/data_sources/local/test_data_source/test_data_source.dart'
    as _i10;
import 'features/data/data_sources/local/test_quest_data_source/test_quest_data_source.dart'
    as _i7;
import 'features/domain/repositories/license_repository/license_repository.dart'
    as _i20;
import 'features/domain/repositories/question_repository/question_repository.dart'
    as _i19;
import 'features/domain/repositories/question_type_repository/question_type_repository.dart'
    as _i13;
import 'features/domain/repositories/repositories.dart' as _i15;
import 'features/domain/repositories/table_notice_board_repository/table_notice_board_repository.dart'
    as _i18;
import 'features/domain/repositories/table_notice_board_type_repository/table_notice_board_type_repository.dart'
    as _i16;
import 'features/domain/repositories/test_quest_repository/test_quest_repository.dart'
    as _i12;
import 'features/domain/repositories/test_repository/test_repository.dart'
    as _i11;
import 'features/domain/use_cases/license_use_case/license_use_case.dart'
    as _i23;
import 'features/domain/use_cases/question_type_use_case/question_type_use_case.dart'
    as _i14;
import 'features/domain/use_cases/question_use_case.dart/question_use_case.dart'
    as _i24;
import 'features/domain/use_cases/table_notice_board_type_use_case/table_notice_board_type_use_case.dart'
    as _i25;
import 'features/domain/use_cases/table_notice_board_use_case/table_notice_board_use_case.dart'
    as _i22;
import 'features/domain/use_cases/test_quest_use_case/test_quest_use_case.dart'
    as _i17;
import 'features/domain/use_cases/test_use_case/test_use_case.dart' as _i21;
import 'features/domain/use_cases/use_cases.dart' as _i30;
import 'features/presentation/ui/home/blocs/home_bloc.dart' as _i29;
import 'features/presentation/ui/license/blocs/license/license_bloc.dart'
    as _i28;
import 'features/presentation/ui/review_questions/blocs/review_questions_action_bloc/review_questions_action_bloc.dart'
    as _i26;
import 'features/presentation/ui/review_questions/blocs/review_questions_bloc/review_questions_bloc.dart'
    as _i27;

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
  gh.lazySingleton<_i4.TableNoiceBoardTypeDataSource>(
      () => _i4.TableNoiceBoardTypeDataSourceImpl(gh<_i3.DatabaseHelper>()));
  gh.lazySingleton<_i5.QuestionDataSource>(
      () => _i5.QuestionDataSourceImpl(gh<_i3.DatabaseHelper>()));
  gh.lazySingleton<_i6.TableNoiceBoardDataSource>(
      () => _i6.TableNoiceBoardDataSourceImpl(gh<_i3.DatabaseHelper>()));
  gh.lazySingleton<_i7.TestQuestDataSource>(
      () => _i7.TestQuestDataSourceImpl(gh<_i3.DatabaseHelper>()));
  gh.lazySingleton<_i8.QuestionTypeDataSouce>(
      () => _i8.QuestionTypeDataSouceImpl(gh<_i3.DatabaseHelper>()));
  gh.lazySingleton<_i9.LicenseDataSource>(
      () => _i9.LicenseDataSourceImpl(gh<_i3.DatabaseHelper>()));
  gh.lazySingleton<_i10.TestDataSource>(
      () => _i10.TestDataSourceImpl(gh<_i3.DatabaseHelper>()));
  gh.lazySingleton<_i11.TestRepository>(
      () => _i11.TestRepositoryImpl(gh<_i10.TestDataSource>()));
  gh.lazySingleton<_i12.TestQuestRepository>(
      () => _i12.TestQuestRepositoryImpl(gh<_i7.TestQuestDataSource>()));
  gh.lazySingleton<_i13.QuestionTypeRepository>(
      () => _i13.QuestionTypeRepositoryImpl(gh<_i8.QuestionTypeDataSouce>()));
  gh.lazySingleton<_i14.QuestionTypeUseCase>(
      () => _i14.QuestionTypeUseCaseImpl(gh<_i15.QuestionTypeRepository>()));
  gh.lazySingleton<_i16.TableNoticeBoardTypeRepository>(() =>
      _i16.TableNoticeBoardTypeRepositoryImpl(
          gh<_i4.TableNoiceBoardTypeDataSource>()));
  gh.lazySingleton<_i17.TestQuestUseCase>(
      () => _i17.TestQuestUseCaseImpl(gh<_i15.TestQuestRepository>()));
  gh.lazySingleton<_i18.TableNoticeBoardRepository>(() =>
      _i18.TableNoticeBoardRepositoryImpl(gh<_i6.TableNoiceBoardDataSource>()));
  gh.lazySingleton<_i19.QuestionRepository>(
      () => _i19.QuestionRepositoryImpl(gh<_i5.QuestionDataSource>()));
  gh.lazySingleton<_i20.LicenseRepository>(
      () => _i20.LicenseRepositoryImpl(gh<_i9.LicenseDataSource>()));
  gh.lazySingleton<_i21.TestUseCase>(
      () => _i21.TestUseCaseImpl(gh<_i15.TestRepository>()));
  gh.lazySingleton<_i22.TableNoticeBoardUseCase>(() =>
      _i22.TableNoticeBoardUseCaseImpl(gh<_i15.TableNoticeBoardRepository>()));
  gh.lazySingleton<_i23.LicenseUseCase>(
      () => _i23.LicenseUseCaseImpl(gh<_i20.LicenseRepository>()));
  gh.lazySingleton<_i24.QuestionUseCase>(
      () => _i24.QuestionUseCaseImpl(gh<_i19.QuestionRepository>()));
  gh.lazySingleton<_i25.TableNoticeBoardTypeUseCase>(() =>
      _i25.TableNoticeBoardTypeUseCaseImpl(
          gh<_i15.TableNoticeBoardTypeRepository>()));
  gh.factory<_i26.ReviewQuestionsActionBloc>(
      () => _i26.ReviewQuestionsActionBloc(gh<_i24.QuestionUseCase>()));
  gh.factory<_i27.ReviewQuestionsBloc>(
      () => _i27.ReviewQuestionsBloc(gh<_i24.QuestionUseCase>()));
  gh.factory<_i28.LicenseBloc>(
      () => _i28.LicenseBloc(gh<_i20.LicenseRepository>()));
  gh.factory<_i29.HomeBloc>(() => _i29.HomeBloc(
        gh<_i30.LicenseUseCase>(),
        gh<_i30.QuestionUseCase>(),
        gh<_i30.QuestionTypeUseCase>(),
        gh<_i30.TableNoticeBoardUseCase>(),
        gh<_i30.TableNoticeBoardTypeUseCase>(),
        gh<_i30.TestUseCase>(),
        gh<_i30.TestQuestUseCase>(),
      ));
  return getIt;
}
