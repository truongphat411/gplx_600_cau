import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:gplx_600_cau/core/base_error/failure.dart';
import 'package:gplx_600_cau/features/data/data_sources/local/question_data_source/question_data_source.dart';
import 'package:gplx_600_cau/features/data/models/question/question.dart';
import 'package:injectable/injectable.dart';

import '../../../../core/base_error/exception.dart';
import '../../../data/data_sources/local/local.dart';

abstract class QuestionRepository {
  Future<Either<Failure, bool>> insertQuestions();
  Future<Either<Failure, List<Question>>> getQuestions();
  Future<Either<Failure, int>> updateQuestion(Question quesiton);
}

@LazySingleton(as: QuestionRepository)
class QuestionRepositoryImpl extends QuestionRepository {
  QuestionRepositoryImpl(
    this._local,
  );

  final QuestionDataSource _local;

  @override
  Future<Either<Failure, bool>> insertQuestions() async {
    try {
      await _local.insertQuestions();
      return const Right(true);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<Question>>> getQuestions() async {
    try {
      List<Question> result = await _local.getQuestions();
      return Right(result);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, int>> updateQuestion(Question quesiton) async {
    try {
      int result = await _local.updateQuestion(quesiton);
      return Right(result);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }
}
