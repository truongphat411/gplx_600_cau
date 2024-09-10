import 'package:dartz/dartz.dart';
import 'package:gplx_600_cau/core/base_error/exception.dart';
import 'package:gplx_600_cau/core/base_error/failure.dart';
import 'package:gplx_600_cau/features/data/data_sources/local/zquestion_data_source/zquestion_data_source.dart';
import 'package:gplx_600_cau/features/data/models/zquestion/zquestion.dart';
import 'package:gplx_600_cau/features/domain/repositories/zquestion_repository/zquestion_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ZQuestionRepository)
class ZQuestionRepositoryImpl extends ZQuestionRepository {
  ZQuestionRepositoryImpl(
    this._local,
  );

  final ZQuestionDataSource _local;

  @override
  Future<Either<Failure, List<ZQuestion>>> getAllQuestions() async {
    try {
      List<ZQuestion> result = await _local.getAllQuestions();
      return Right(result);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<ZQuestion>>> getTop60CriticalQuestions() async {
    try {
      List<ZQuestion> result = await _local.getTop60CriticalQuestions();
      return Right(result);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<ZQuestion>>> getQuestionsByType({
    required int questionType,
  }) async {
    try {
      List<ZQuestion> result = await _local.getQuestionsByType(
        questionType: questionType,
      );
      return Right(result);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<ZQuestion>>> getSavedQuestions() async {
    try {
      List<ZQuestion> result = await _local.getSavedQuestions();
      return Right(result);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<ZQuestion>>> getFrequentMistakes() async {
    try {
      List<ZQuestion> result = await _local.getFrequentMistakes();
      return Right(result);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, int>> updateQuestion(ZQuestion quesiton) async {
    try {
      int result = await _local.updateQuestion(quesiton);
      return Right(result);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }
}
