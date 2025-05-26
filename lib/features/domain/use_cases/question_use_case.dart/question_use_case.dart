import 'package:dartz/dartz.dart';
import 'package:gplx_600_cau/core/base_error/failure.dart';
import 'package:gplx_600_cau/features/data/models/question/question.dart';
import 'package:gplx_600_cau/features/domain/repositories/question_repository/question_repository.dart';
import 'package:injectable/injectable.dart';

abstract class QuestionUseCase {
  Future<Either<Failure, bool>> insertQuestions() {
    throw UnimplementedError('execute-QuestionUseCase-insertQuestions');
  }

  Future<Either<Failure, List<Question>>> getAllQuestions() {
    throw UnimplementedError('execute-ZLicenseUseCase-getAllQuestions');
  }

  Future<Either<Failure, List<Question>>> getTop60CriticalQuestions() {
    throw UnimplementedError(
        'execute-ZLicenseUseCase-getTop60CriticalQuestions');
  }

  Future<Either<Failure, List<Question>>> getQuestionsByType({
    required int questionType,
  }) {
    throw UnimplementedError(
        'execute-ZLicenseUseCase-getTop60CriticalQuestions');
  }

  Future<Either<Failure, List<Question>>> getSavedQuestions() {
    throw UnimplementedError('execute-ZLicenseUseCase-getSavedQuestions');
  }

  Future<Either<Failure, List<Question>>> getFrequentMistakes() {
    throw UnimplementedError('execute-ZLicenseUseCase-getFrequentMistakes');
  }

  Future<Either<Failure, int>> updateQuestion(Question question) {
    throw UnimplementedError(
        'execute-ZLicenseUseCase-getTop60CriticalQuestions');
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
  Future<Either<Failure, List<Question>>> getAllQuestions() {
    return repository.getAllQuestions();
  }

  @override
  Future<Either<Failure, List<Question>>> getTop60CriticalQuestions() {
    return repository.getTop60CriticalQuestions();
  }

  @override
  Future<Either<Failure, List<Question>>> getQuestionsByType({
    required int questionType,
  }) {
    return repository.getQuestionsByType(
      questionType: questionType,
    );
  }

  @override
  Future<Either<Failure, List<Question>>> getSavedQuestions() {
    return repository.getSavedQuestions();
  }

  @override
  Future<Either<Failure, List<Question>>> getFrequentMistakes() {
    return repository.getFrequentMistakes();
  }

  @override
  Future<Either<Failure, int>> updateQuestion(Question question) {
    return repository.updateQuestion(question);
  }
}
