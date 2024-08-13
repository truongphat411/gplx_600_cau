import 'package:freezed_annotation/freezed_annotation.dart';

part 'zquestion.freezed.dart';
part 'zquestion.g.dart';

@freezed
class ZQuestion with _$ZQuestion {
  const factory ZQuestion({
    String? ZANSWERDESC,
    int? ZANSWERS,
    int? ZAWSA1,
    String? ZIMAGE,
    int? ZINCLUDEA1,
    int? ZINCLUDEA2,
    int? ZINCLUDEA34,
    int? ZINCLUDEB1,
    int? ZINCLUDEB2,
    int? ZINCLUDEC,
    int? ZINCLUDEDEF,
    int? ZLEARNED,
    int? ZMARKED,
    String? ZOPTION1,
    String? ZOPTION2,
    String? ZOPTION3,
    String? ZOPTION4,
    String? ZQUESTIONCONTENT,
    String? ZQUESTIONDIE,
    int? ZQUESTIONTYPE,
    int? ZWRONG,
    int? Z_ENT,
    int? Z_PK,
  }) = _ZQuestion;

  const ZQuestion._();

  factory ZQuestion.fromJson(Map<String, Object?> json) =>
      _$ZQuestionFromJson(json);
}
