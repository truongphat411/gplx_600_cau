import 'package:dartz/dartz.dart';
import 'package:gplx_600_cau/core/base_error/failure.dart';
import 'package:gplx_600_cau/features/domain/repositories/repositories.dart';
import 'package:injectable/injectable.dart';

abstract class TableNoticeBoardTypeUseCase {
  Future<Either<Failure, bool>> insertTableNoticeBoardTypes() {
    throw UnimplementedError(
        'execute-tableNoticeBoardTypeUseCase-insertTableNoticeBoardTypes');
  }
}

@LazySingleton(as: TableNoticeBoardTypeUseCase)
class TableNoticeBoardTypeUseCaseImpl extends TableNoticeBoardTypeUseCase {
  final TableNoticeBoardTypeRepository repository;

  TableNoticeBoardTypeUseCaseImpl(this.repository);

  @override
  Future<Either<Failure, bool>> insertTableNoticeBoardTypes() {
    return repository.insertTableNoticeBoardTypes();
  }
}
