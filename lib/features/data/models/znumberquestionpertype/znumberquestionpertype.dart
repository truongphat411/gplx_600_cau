import 'package:freezed_annotation/freezed_annotation.dart';

part 'znumberquestionpertype.freezed.dart';
part 'znumberquestionpertype.g.dart';

@freezed
class ZNumberQuestionPerType with _$ZNumberQuestionPerType {
  const factory ZNumberQuestionPerType({
    String? ZTYPE_NAME,
    String? ZDESC,
    int? TOTALQUESTIONS,
  }) = _ZNumberQuestionPerType;

  const ZNumberQuestionPerType._();

  factory ZNumberQuestionPerType.fromJson(Map<String, Object?> json) =>
      _$ZNumberQuestionPerTypeFromJson(json);
}
