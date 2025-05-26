import 'package:dartz/dartz.dart';
import 'package:gplx_600_cau/core/base_error/failure.dart';
import 'package:gplx_600_cau/features/domain/repositories/repositories.dart';
import 'package:injectable/injectable.dart';

abstract class TableNoticeBoardUseCase {
  Future<Either<Failure, bool>> insertTableNoticeBoards() {
    throw UnimplementedError(
        'execute-tableNoticeBoardTypeUseCase-insertTableNoticeBoards');
  }
}

@LazySingleton(as: TableNoticeBoardUseCase)
class TableNoticeBoardUseCaseImpl extends TableNoticeBoardUseCase {
  final TableNoticeBoardRepository repository;

  TableNoticeBoardUseCaseImpl(this.repository);

  @override
  Future<Either<Failure, bool>> insertTableNoticeBoards() {
    return repository.insertTableNoticeBoards();
  }
}
