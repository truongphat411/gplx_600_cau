import 'package:dartz/dartz.dart';
import 'package:gplx_600_cau/core/base_error/failure.dart';
import 'package:gplx_600_cau/features/data/models/license/license.dart';
import 'package:gplx_600_cau/features/domain/repositories/license_repository/license_repository.dart';
import 'package:injectable/injectable.dart';

abstract class LicenseUseCase {
  Future<Either<Failure, bool>> insertLicenses() {
    throw UnimplementedError('execute-licenseUseCase-insertLicenses');
  }

  Future<Either<Failure, List<License>>> getAllLicenses() {
    throw UnimplementedError('execute-licenseUseCase-getAllLicenses');
  }
}

@LazySingleton(as: LicenseUseCase)
class LicenseUseCaseImpl extends LicenseUseCase {
  final LicenseRepository repository;

  LicenseUseCaseImpl(this.repository);

  @override
  Future<Either<Failure, bool>> insertLicenses() {
    return repository.insertLicenses();
  }

  @override
  Future<Either<Failure, List<License>>> getAllLicenses() {
    return repository.getAllLicenses();
  }
}
