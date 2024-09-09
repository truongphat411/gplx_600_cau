import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:gplx_600_cau/core/base_error/failure.dart';
import 'package:gplx_600_cau/features/data/models/znumberquestionpertype/znumberquestionpertype.dart';

abstract class ZNumberQuestionPerTypeRepository {
  Future<Either<Failure, List<ZNumberQuestionPerType>>> getQuestionStatistics();
}
