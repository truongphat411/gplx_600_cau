import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:gplx_600_cau/core/base_error/exception.dart';
import 'package:gplx_600_cau/core/base_error/failure.dart';
import 'package:gplx_600_cau/features/data/data_sources/local/test_quest_data_source/test_quest_data_source.dart';
import 'package:gplx_600_cau/features/data/models/models.dart';
import 'package:injectable/injectable.dart';

abstract class TestQuestRepository {
  Future<Either<Failure, bool>> insertTestQuests() async {
    throw UnimplementedError('testQuestRepository-insertTestQuests');
  }

  Future<Either<Failure, List<TestQuest>>> getTestQuests() async {
    throw UnimplementedError('testQuestRepository-getTestQuests');
  }
}

@LazySingleton(as: TestQuestRepository)
class TestQuestRepositoryImpl extends TestQuestRepository {
  TestQuestRepositoryImpl(
    this._local,
  );

  final TestQuestDataSource _local;

  @override
  Future<Either<Failure, bool>> insertTestQuests() async {
    try {
      await _local.insertTestQuest();
      return const Right(true);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<TestQuest>>> getTestQuests() async {
    try {
      final testQuests = await _local.getTestQuests();
      return Right(testQuests);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return const Left(CacheFailure('An unexpected error occurred'));
    }
  }
}
