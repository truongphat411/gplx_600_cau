import 'package:dartz/dartz.dart';
import 'package:gplx_600_cau/core/base_error/failure.dart';
import 'package:gplx_600_cau/features/domain/repositories/repositories.dart';
import 'package:injectable/injectable.dart';

abstract class QuestionTypeUseCase {
  Future<Either<Failure, bool>> insertQuestionTypes() {
    throw UnimplementedError('execute-QuestionTypeUseCase-insertQuestionTypes');
  }
}

@LazySingleton(as: QuestionTypeUseCase)
class QuestionTypeUseCaseImpl extends QuestionTypeUseCase {
  final QuestionTypeRepository repository;

  QuestionTypeUseCaseImpl(this.repository);

  @override
  Future<Either<Failure, bool>> insertQuestionTypes() {
    return repository.insertQuestionTypes();
  }
}
