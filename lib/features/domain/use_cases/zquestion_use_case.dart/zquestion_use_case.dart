import 'package:dartz/dartz.dart';
import 'package:gplx_600_cau/core/base_error/failure.dart';
import 'package:gplx_600_cau/features/data/models/zquestion/zquestion.dart';
import 'package:gplx_600_cau/features/domain/repositories/zquestion_repository/zquestion_repository.dart';
import 'package:injectable/injectable.dart';

abstract class ZQuestionUseCase {
  Future<Either<Failure, List<ZQuestion>>> execute() {
    throw UnimplementedError('execute-ZLicenseUseCase-getAllQuestions');
  }
}

@LazySingleton(as: ZQuestionUseCase)
class ZQuestionUseCaseImpl extends ZQuestionUseCase {
  final ZQuestionRepository repository;

  ZQuestionUseCaseImpl(this.repository);

  @override
  Future<Either<Failure, List<ZQuestion>>> execute() {
    return repository.getAllQuestions();
  }
}
