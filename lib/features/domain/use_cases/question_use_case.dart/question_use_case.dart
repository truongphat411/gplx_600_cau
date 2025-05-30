import 'package:dartz/dartz.dart';
import 'package:gplx_600_cau/core/base_error/failure.dart';
import 'package:gplx_600_cau/features/data/models/question/question.dart';
import 'package:gplx_600_cau/features/domain/repositories/question_repository/question_repository.dart';
import 'package:injectable/injectable.dart';

abstract class QuestionUseCase {
  Future<Either<Failure, bool>> insertQuestions() {
    throw UnimplementedError('questionUseCase-insertQuestions');
  }

  Future<Either<Failure, List<Question>>> getQuestions() {
    throw UnimplementedError('questionUseCase-getAllQuestions');
  }

  Future<Either<Failure, int>> updateQuestion(Question question) {
    throw UnimplementedError('questionUseCase-updateQuestion');
  }
}

@LazySingleton(as: QuestionUseCase)
class QuestionUseCaseImpl extends QuestionUseCase {
  final QuestionRepository repository;

  QuestionUseCaseImpl(this.repository);

  @override
  Future<Either<Failure, bool>> insertQuestions() {
    return repository.insertQuestions();
  }

  @override
  Future<Either<Failure, List<Question>>> getQuestions() {
    return repository.getQuestions();
  }

  @override
  Future<Either<Failure, int>> updateQuestion(Question question) {
    return repository.updateQuestion(question);
  }
}
