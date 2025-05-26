import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:gplx_600_cau/core/base_error/exception.dart';
import 'package:gplx_600_cau/core/base_error/failure.dart';
import 'package:gplx_600_cau/features/data/data_sources/local/test_data_source/test_data_source.dart';
import 'package:injectable/injectable.dart';

abstract class TestRepository {
  Future<Either<Failure, bool>> insertTests();
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
}
