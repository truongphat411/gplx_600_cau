import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:gplx_600_cau/core/base_error/exception.dart';
import 'package:gplx_600_cau/core/base_error/failure.dart';
import 'package:gplx_600_cau/features/data/data_sources/local/test_quest_data_source/test_quest_data_source.dart';
import 'package:injectable/injectable.dart';

abstract class TestQuestRepository {
  Future<Either<Failure, bool>> insertTestQuests();
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
}
