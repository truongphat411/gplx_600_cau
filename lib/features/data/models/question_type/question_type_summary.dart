import 'package:freezed_annotation/freezed_annotation.dart';

part 'question_type_summary.freezed.dart';
part 'question_type_summary.g.dart';

@freezed
class QuestionTypeSummary with _$QuestionTypeSummary {
  const factory QuestionTypeSummary({
    int? QUESTION_TYPE_PK,
    String? ZTYPE_NAME,
    int? TOTAL_QUESTIONS_LEARNED,
    int? TOTAL_QUESTIONS,
  }) = _QuestionTypeSummary;

  const QuestionTypeSummary._();

  factory QuestionTypeSummary.fromJson(Map<String, Object?> json) =>
      _$QuestionTypeSummaryFromJson(json);
}
