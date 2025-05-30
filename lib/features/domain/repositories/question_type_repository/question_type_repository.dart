import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:gplx_600_cau/core/base_error/exception.dart';
import 'package:gplx_600_cau/core/base_error/failure.dart';
import 'package:gplx_600_cau/features/data/data_sources/local/question_type_data_source/question_type_data_source.dart';
import 'package:injectable/injectable.dart';

import '../../../data/models/models.dart';

abstract class QuestionTypeRepository {
  Future<Either<Failure, bool>> insertQuestionTypes();
  Future<Either<Failure, List<QuestionType>>> getQuestionTypes() {
    throw UnimplementedError('questionTypeRepository-getQuestionTypes');
  }
}

@LazySingleton(as: QuestionTypeRepository)
class QuestionTypeRepositoryImpl extends QuestionTypeRepository {
  QuestionTypeRepositoryImpl(
    this._local,
  );

  final QuestionTypeDataSouce _local;

  @override
  Future<Either<Failure, bool>> insertQuestionTypes() async {
    try {
      await _local.insertQuestionTypes();
      return const Right(true);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<QuestionType>>> getQuestionTypes() async {
    try {
      final questionTypes = await _local.getQuestionTypes();
      return Right(questionTypes);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return const Left(CacheFailure('An unexpected error occurred'));
    }
  }
}
