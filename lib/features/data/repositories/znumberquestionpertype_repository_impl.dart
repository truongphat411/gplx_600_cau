import 'package:dartz/dartz.dart';
import 'package:gplx_600_cau/core/base_error/exception.dart';
import 'package:gplx_600_cau/core/base_error/failure.dart';
import 'package:gplx_600_cau/features/data/data_sources/local/znumberquestionpertype_data_source/znumberquestionpertype_data_source.dart';
import 'package:gplx_600_cau/features/data/models/znumberquestionpertype/znumberquestionpertype.dart';
import 'package:gplx_600_cau/features/domain/repositories/znumberquestionpertype_repository/znumberquestionpertype_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ZNumberQuestionPerTypeRepository)
class ZNumberRepositoryRepositoryImpl extends ZNumberQuestionPerTypeRepository {
  ZNumberRepositoryRepositoryImpl(
    this._local,
  );

  final ZNumberQuestionPerTypeDataSource _local;

  @override
  Future<Either<Failure, List<ZNumberQuestionPerType>>>
      getQuestionStatistics() async {
    try {
      List<ZNumberQuestionPerType> result =
          await _local.getQuestionStatistics();
      return Right(result);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }
}
