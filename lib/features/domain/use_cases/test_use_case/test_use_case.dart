import 'package:dartz/dartz.dart';
import 'package:gplx_600_cau/core/base_error/failure.dart';
import 'package:gplx_600_cau/features/data/models/models.dart';
import 'package:gplx_600_cau/features/domain/repositories/repositories.dart';
import 'package:injectable/injectable.dart';

abstract class TestUseCase {
  Future<Either<Failure, bool>> insertTests() {
    throw UnimplementedError('testUseCase-insertTestQuest');
  }

  Future<Either<Failure, List<Test>>> getTests() {
    throw UnimplementedError('testUseCase-getTests');
  }
}

@LazySingleton(as: TestUseCase)
class TestUseCaseImpl extends TestUseCase {
  final TestRepository repository;

  TestUseCaseImpl(this.repository);

  @override
  Future<Either<Failure, bool>> insertTests() {
    return repository.insertTests();
  }

  @override
  Future<Either<Failure, List<Test>>> getTests() {
    return repository.getTests();
  }
}
