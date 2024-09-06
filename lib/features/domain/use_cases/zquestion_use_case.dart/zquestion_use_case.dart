import 'package:dartz/dartz.dart';
import 'package:gplx_600_cau/core/base_error/failure.dart';
import 'package:gplx_600_cau/features/data/models/zquestion/zquestion.dart';
import 'package:gplx_600_cau/features/domain/repositories/zquestion_repository/zquestion_repository.dart';
import 'package:injectable/injectable.dart';

abstract class ZQuestionUseCase {
  Future<Either<Failure, List<ZQuestion>>> getAllQuestions() {
    throw UnimplementedError('execute-ZLicenseUseCase-getAllQuestions');
  }

  Future<Either<Failure, List<ZQuestion>>> getTop60CriticalQuestions() {
    throw UnimplementedError(
        'execute-ZLicenseUseCase-getTop60CriticalQuestions');
  }

  Future<Either<Failure, List<ZQuestion>>> getSavedQuestions() {
    throw UnimplementedError('execute-ZLicenseUseCase-getSavedQuestions');
  }

  Future<Either<Failure, List<ZQuestion>>> getFrequentMistakes() {
    throw UnimplementedError('execute-ZLicenseUseCase-getFrequentMistakes');
  }

  Future<Either<Failure, int>> updateQuestion(ZQuestion question) {
    throw UnimplementedError(
        'execute-ZLicenseUseCase-getTop60CriticalQuestions');
  }
}

@LazySingleton(as: ZQuestionUseCase)
class ZQuestionUseCaseImpl extends ZQuestionUseCase {
  final ZQuestionRepository repository;

  ZQuestionUseCaseImpl(this.repository);

  @override
  Future<Either<Failure, List<ZQuestion>>> getAllQuestions() {
    return repository.getAllQuestions();
  }

  @override
  Future<Either<Failure, List<ZQuestion>>> getTop60CriticalQuestions() {
    return repository.getTop60CriticalQuestions();
  }

  @override
  Future<Either<Failure, List<ZQuestion>>> getSavedQuestions() {
    return repository.getSavedQuestions();
  }

  @override
  Future<Either<Failure, List<ZQuestion>>> getFrequentMistakes() {
    return repository.getFrequentMistakes();
  }

  @override
  Future<Either<Failure, int>> updateQuestion(ZQuestion question) {
    return repository.updateQuestion(question);
  }
}
