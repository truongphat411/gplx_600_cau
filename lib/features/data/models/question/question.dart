import 'package:freezed_annotation/freezed_annotation.dart';

part 'question.freezed.dart';
part 'question.g.dart';

@freezed
class Question with _$Question {
  const factory Question({
    int? Z_PK,
    String? ZQUESTIONCONTENT,
    String? ZIMAGE,
    String? ZOPTION1,
    String? ZOPTION2,
    String? ZOPTION3,
    String? ZOPTION4,
    String? ZANSWERIMG,
    String? ZANSWERDESC,
    int? ZCORRECT,
    int? ZQUESTIONTYPE,
    int? ZLEARNED,
    int? ZMARKED,
    int? ZWRONG,
    int? INGROUP_A1,
    int? INGROUP_A,
    int? INGROUP_B1,
    int? INGROUP_B,
    String? DIGROUPA1,
    String? DIGROUPB1,
    int? INGROUP_DTOE,
    String? ZQUESTIONDIE,
    int? Z_ENT,
    int? ZLATEST,
    int? REZ1,
  }) = _Question;

  const Question._();

  factory Question.fromJson(Map<String, Object?> json) =>
      _$QuestionFromJson(json);
}
