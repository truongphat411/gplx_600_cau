import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:gplx_600_cau/core/base_error/exception.dart';
import 'package:gplx_600_cau/core/base_error/failure.dart';
import 'package:gplx_600_cau/features/data/data_sources/local/license_data_source/license_data_source.dart';
import 'package:gplx_600_cau/features/data/models/license/license.dart';
import 'package:injectable/injectable.dart';

abstract class LicenseRepository {
  Future<Either<Failure, bool>> insertLicenses();
  Future<Either<Failure, List<License>>> getAllLicenses();
}

@LazySingleton(as: LicenseRepository)
class LicenseRepositoryImpl extends LicenseRepository {
  LicenseRepositoryImpl(
    this._local,
  );

  final LicenseDataSource _local;

  @override
  Future<Either<Failure, bool>> insertLicenses() async {
    try {
      await _local.insertLicenses();
      return const Right(true);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }

  @override
  Future<Either<Failure, List<License>>> getAllLicenses() async {
    try {
      List<License> result = await _local.getAllLicenses();
      return Right(result);
    } on CacheException catch (e) {
      return Left(CacheFailure(e.message));
    }
  }
}
