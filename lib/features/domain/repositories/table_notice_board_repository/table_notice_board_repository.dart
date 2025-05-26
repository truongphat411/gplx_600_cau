import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:gplx_600_cau/core/base_error/failure.dart';
import 'package:gplx_600_cau/features/data/data_sources/local/table_notice_board_data_source/table_noice_board_data_source.dart';
import 'package:injectable/injectable.dart';

abstract class TableNoticeBoardRepository {
  Future<Either<Failure, bool>> insertTableNoticeBoards();
}

@LazySingleton(as: TableNoticeBoardRepository)
class TableNoticeBoardRepositoryImpl extends TableNoticeBoardRepository {
  TableNoticeBoardRepositoryImpl(
    this._local,
  );

  final TableNoiceBoardDataSource _local;

  @override
  Future<Either<Failure, bool>> insertTableNoticeBoards() async {
    try {
      _local.insertTableNoiceBoard();
      return const Right(true);
    } catch (e) {
      return Left(CacheFailure(e.toString()));
    }
  }
}
