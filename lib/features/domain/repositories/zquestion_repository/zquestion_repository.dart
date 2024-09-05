import 'dart:async';
import 'package:dartz/dartz.dart';
import 'package:gplx_600_cau/core/base_error/failure.dart';
import 'package:gplx_600_cau/features/data/models/zquestion/zquestion.dart';

abstract class ZQuestionRepository {
  Future<Either<Failure, List<ZQuestion>>> getAllQuestions();
  Future<Either<Failure, List<ZQuestion>>> getTop60CriticalQuestions();
  Future<Either<Failure, List<ZQuestion>>> getFrequentMistakes();
  Future<Either<Failure, int>> updateQuestion(ZQuestion quesiton);
}
