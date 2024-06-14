import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:gplx_600_cau/core/base_error/failure.dart';
import 'package:gplx_600_cau/features/data/models/zlicense/zlicense.dart';

abstract class ZLicenseRepository {
  Future<Either<Failure, List<ZLicense>>> getAllLicenses();
}
