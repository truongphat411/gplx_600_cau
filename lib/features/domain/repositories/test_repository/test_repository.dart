import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:gplx_600_cau/core/base_error/exception.dart';
import 'package:gplx_600_cau/core/base_error/failure.dart';
import 'package:gplx_600_cau/features/data/data_sources/local/test_data_source/test_data_source.dart';
import 'package:gplx_600_cau/features/data/models/models.dart';
import 'package:injectable/injectable.dart';

abstract class TestRepository {
  Future<Either<Failure, bool>> insertTests() async {
    throw UnimplementedError('testRepository-insertZTestQuest');
  }

  Future<Either<Failure, List<Test>>> getTests() async {
    throw UnimplementedError('testRepository-getTests');
  }
}

@LazySingleton(as: TestRepository)
class TestRepositoryImpl extends TestRepository {
  TestRepositoryImpl(
    this._local,
  );

  final TestDataSource _local;

  @override
  Future<Either<Failure, bool>> insertTests() async {
    try {
      await _local.insertTests();
      return const Right(true);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<Test>>> getTests() async {
    try {
      final tests = await _local.getTests();
      return Right(tests);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    } catch (e) {
      return const Left(CacheFailure('An unexpected error occurred'));
    }
  }
}
