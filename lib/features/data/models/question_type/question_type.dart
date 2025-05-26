import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_type.freezed.dart';
part 'question_type.g.dart';

@freezed
class QuestionType with _$QuestionType {
  const factory QuestionType({
    int? Z_PK,
    int? Z_ENT,
    int? Z_OPT,
    String? ZDESC,
    String? ZID,
    String? ZTYPE_NAME,
    int? ZCURRENT_INDEX,
  }) = _QuestionType;

  factory QuestionType.fromJson(Map<String, dynamic> json) =>
      _$QuestionTypeFromJson(json);
}
