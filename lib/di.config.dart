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
    as _i11;
import 'features/data/data_sources/local/local.dart' as _i7;
import 'features/data/data_sources/local/question_data_source/question_data_source.dart'
    as _i5;
import 'features/data/data_sources/local/question_type_data_source/question_type_data_source.dart'
    as _i6;
import 'features/data/data_sources/local/table_notice_board_data_source/table_noice_board_data_source.dart'
    as _i8;
import 'features/data/data_sources/local/table_notice_board_type_data_source/table_notice_board_type_data_source.dart'
    as _i4;
import 'features/data/data_sources/local/test_data_source/test_data_source.dart'
    as _i12;
import 'features/data/data_sources/local/test_quest_data_source/test_quest_data_source.dart'
    as _i9;
import 'features/domain/repositories/license_repository/license_repository.dart'
    as _i21;
import 'features/domain/repositories/question_repository/question_repository.dart'
    as _i18;
import 'features/domain/repositories/question_type_repository/question_type_repository.dart'
    as _i10;
import 'features/domain/repositories/repositories.dart' as _i16;
import 'features/domain/repositories/table_notice_board_repository/table_notice_board_repository.dart'
    as _i20;
import 'features/domain/repositories/table_notice_board_type_repository/table_notice_board_type_repository.dart'
    as _i17;
import 'features/domain/repositories/test_quest_repository/test_quest_repository.dart'
    as _i14;
import 'features/domain/repositories/test_repository/test_repository.dart'
    as _i13;
import 'features/domain/use_cases/license_use_case/license_use_case.dart'
    as _i24;
import 'features/domain/use_cases/question_type_use_case/question_type_use_case.dart'
    as _i15;
import 'features/domain/use_cases/question_use_case.dart/question_use_case.dart'
    as _i25;
import 'features/domain/use_cases/table_notice_board_type_use_case/table_notice_board_type_use_case.dart'
    as _i26;
import 'features/domain/use_cases/table_notice_board_use_case/table_notice_board_use_case.dart'
    as _i23;
import 'features/domain/use_cases/test_quest_use_case/test_quest_use_case.dart'
    as _i19;
import 'features/domain/use_cases/test_use_case/test_use_case.dart' as _i22;
import 'features/domain/use_cases/use_cases.dart' as _i29;
import 'features/presentation/ui/home/blocs/home_bloc.dart' as _i28;
import 'features/presentation/ui/review_questions/blocs/review_questions_action_bloc/review_questions_action_bloc.dart'
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
  gh.lazySingleton<_i6.QuestionTypeDataSouce>(
      () => _i6.QuestionTypeDataSouceImpl(gh<_i7.DatabaseHelper>()));
  gh.lazySingleton<_i8.TableNoiceBoardDataSource>(
      () => _i8.TableNoiceBoardDataSourceImpl(gh<_i3.DatabaseHelper>()));
  gh.lazySingleton<_i9.TestQuestDataSource>(
      () => _i9.TestQuestDataSourceImpl(gh<_i3.DatabaseHelper>()));
  gh.lazySingleton<_i10.QuestionTypeRepository>(
      () => _i10.QuestionTypeRepositoryImpl(gh<_i6.QuestionTypeDataSouce>()));
  gh.lazySingleton<_i11.LicenseDataSource>(
      () => _i11.LicenseDataSourceImpl(gh<_i3.DatabaseHelper>()));
  gh.lazySingleton<_i12.TestDataSource>(
      () => _i12.TestDataSourceImpl(gh<_i3.DatabaseHelper>()));
  gh.lazySingleton<_i13.TestRepository>(
      () => _i13.TestRepositoryImpl(gh<_i12.TestDataSource>()));
  gh.lazySingleton<_i14.TestQuestRepository>(
      () => _i14.TestQuestRepositoryImpl(gh<_i9.TestQuestDataSource>()));
  gh.lazySingleton<_i15.QuestionTypeUseCase>(
      () => _i15.QuestionTypeUseCaseImpl(gh<_i16.QuestionTypeRepository>()));
  gh.lazySingleton<_i17.TableNoticeBoardTypeRepository>(() =>
      _i17.TableNoticeBoardTypeRepositoryImpl(
          gh<_i4.TableNoiceBoardTypeDataSource>()));
  gh.lazySingleton<_i18.QuestionRepository>(
      () => _i18.QuestionRepositoryImpl(gh<_i5.QuestionDataSource>()));
  gh.lazySingleton<_i19.TestQuestUseCase>(
      () => _i19.TestQuestUseCaseImpl(gh<_i16.TestQuestRepository>()));
  gh.lazySingleton<_i20.TableNoticeBoardRepository>(() =>
      _i20.TableNoticeBoardRepositoryImpl(gh<_i8.TableNoiceBoardDataSource>()));
  gh.lazySingleton<_i21.LicenseRepository>(
      () => _i21.LicenseRepositoryImpl(gh<_i11.LicenseDataSource>()));
  gh.lazySingleton<_i22.TestUseCase>(
      () => _i22.TestUseCaseImpl(gh<_i16.TestRepository>()));
  gh.lazySingleton<_i23.TableNoticeBoardUseCase>(() =>
      _i23.TableNoticeBoardUseCaseImpl(gh<_i16.TableNoticeBoardRepository>()));
  gh.lazySingleton<_i24.LicenseUseCase>(
      () => _i24.LicenseUseCaseImpl(gh<_i21.LicenseRepository>()));
  gh.lazySingleton<_i25.QuestionUseCase>(
      () => _i25.QuestionUseCaseImpl(gh<_i18.QuestionRepository>()));
  gh.lazySingleton<_i26.TableNoticeBoardTypeUseCase>(() =>
      _i26.TableNoticeBoardTypeUseCaseImpl(
          gh<_i16.TableNoticeBoardTypeRepository>()));
  gh.factory<_i27.ReviewQuestionsActionBloc>(
      () => _i27.ReviewQuestionsActionBloc(gh<_i25.QuestionUseCase>()));
  gh.factory<_i28.HomeBloc>(() => _i28.HomeBloc(
        gh<_i29.LicenseUseCase>(),
        gh<_i29.QuestionUseCase>(),
        gh<_i29.QuestionTypeUseCase>(),
        gh<_i29.TableNoticeBoardUseCase>(),
        gh<_i29.TableNoticeBoardTypeUseCase>(),
        gh<_i29.TestUseCase>(),
        gh<_i29.TestQuestUseCase>(),
      ));
  return getIt;
}
