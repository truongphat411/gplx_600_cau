import 'package:dartz/dartz.dart';
import 'package:gplx_600_cau/core/base_error/exception.dart';
import 'package:gplx_600_cau/core/base_error/failure.dart';
import 'package:gplx_600_cau/features/data/data_sources/local/zlicense_data_source/zlicense_data_source.dart';
import 'package:gplx_600_cau/features/data/models/zlicense/zlicense.dart';
import 'package:gplx_600_cau/features/domain/repositories/zlicense_repository/zlicense_repository.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: ZLicenseRepository)
class ZLicenseRepositoryImpl extends ZLicenseRepository {
  ZLicenseRepositoryImpl(
    this._local,
  );

  final ZLicenseDataSource _local;

  @override
  Future<Either<Failure, List<ZLicense>>> getAllLicenses() async {
    try {
      List<ZLicense> result = await _local.getAllLicenses();
      return Right(result);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }
}
