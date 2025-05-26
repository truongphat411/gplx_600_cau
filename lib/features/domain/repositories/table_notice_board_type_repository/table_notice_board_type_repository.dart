import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:gplx_600_cau/core/base_error/failure.dart';
import 'package:gplx_600_cau/features/data/data_sources/local/table_notice_board_type_data_source/table_notice_board_type_data_source.dart';
import 'package:injectable/injectable.dart';

abstract class TableNoticeBoardTypeRepository {
  Future<Either<Failure, bool>> insertTableNoticeBoardTypes();
}

@LazySingleton(as: TableNoticeBoardTypeRepository)
class TableNoticeBoardTypeRepositoryImpl
    extends TableNoticeBoardTypeRepository {
  TableNoticeBoardTypeRepositoryImpl(
    this._local,
  );

  final TableNoiceBoardTypeDataSource _local;

  @override
  Future<Either<Failure, bool>> insertTableNoticeBoardTypes() async {
    try {
      _local.insertTableNoiceBoardType();
      return const Right(true);
    } catch (e) {
      return Left(CacheFailure(e.toString()));
    }
  }
}
