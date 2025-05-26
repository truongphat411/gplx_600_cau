import 'package:dartz/dartz.dart';
import 'package:gplx_600_cau/core/base_error/failure.dart';
import 'package:gplx_600_cau/features/domain/repositories/repositories.dart';
import 'package:injectable/injectable.dart';

abstract class TestQuestUseCase {
  Future<Either<Failure, bool>> insertTestQuests() {
    throw UnimplementedError('execute-testQuestUseCase-insertTestQuest');
  }
}

@LazySingleton(as: TestQuestUseCase)
class TestQuestUseCaseImpl extends TestQuestUseCase {
  final TestQuestRepository repository;

  TestQuestUseCaseImpl(this.repository);

  @override
  Future<Either<Failure, bool>> insertTestQuests() {
    return repository.insertTestQuests();
  }
}
