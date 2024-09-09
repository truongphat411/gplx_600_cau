import 'package:dartz/dartz.dart';
import 'package:gplx_600_cau/core/base_error/failure.dart';
import 'package:gplx_600_cau/features/data/models/znumberquestionpertype/znumberquestionpertype.dart';
import 'package:gplx_600_cau/features/domain/repositories/znumberquestionpertype_repository/znumberquestionpertype_repository.dart';
import 'package:injectable/injectable.dart';

abstract class ZNumberQuestionPerTypeUseCase {
  Future<Either<Failure, List<ZNumberQuestionPerType>>>
      getQuestionStatistics() {
    throw UnimplementedError('execute-ZLicenseUseCase-getQuestionStatistics');
  }
}

@LazySingleton(as: ZNumberQuestionPerTypeUseCase)
class ZNumberQuestionPerTypeUseCaseImpl extends ZNumberQuestionPerTypeUseCase {
  final ZNumberQuestionPerTypeRepository repository;

  ZNumberQuestionPerTypeUseCaseImpl(this.repository);

  @override
  Future<Either<Failure, List<ZNumberQuestionPerType>>>
      getQuestionStatistics() {
    return repository.getQuestionStatistics();
  }
}
