import 'package:dartz/dartz.dart';
import 'package:gplx_600_cau/core/base_error/failure.dart';
import 'package:gplx_600_cau/features/data/models/zlicense/zlicense.dart';
import 'package:gplx_600_cau/features/domain/repositories/zlicense_repository/zlicense_repository.dart';
import 'package:injectable/injectable.dart';

abstract class ZLicenseUseCase {
  Future<Either<Failure, List<ZLicense>>> execute() {
    throw UnimplementedError('execute-ZLicenseUseCase-getAllLicenses');
  }
}

@LazySingleton(as: ZLicenseUseCase)
class ZLicenseUseCaseImpl extends ZLicenseUseCase {
  final ZLicenseRepository repository;

  ZLicenseUseCaseImpl(this.repository);

  @override
  Future<Either<Failure, List<ZLicense>>> execute() {
    return repository.getAllLicenses();
  }
}
