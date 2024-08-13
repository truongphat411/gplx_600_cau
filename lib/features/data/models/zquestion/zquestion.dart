import 'package:freezed_annotation/freezed_annotation.dart';

part 'zquestion.freezed.dart';
part 'zquestion.g.dart';

@freezed
class ZQuestion with _$ZQuestion {
  const factory ZQuestion({
    String? zANSWERDESC,
    int? zANSWERS,
    int? zAWSA1,
    String? zIMAGE,
    int? zINCLUDEA1,
    int? zINCLUDEA2,
    int? zINCLUDEA34,
    int? zINCLUDEB1,
    int? zINCLUDEB2,
    int? zINCLUDEC,
    int? zINCLUDEDEF,
    int? zLEARNED,
    int? zMARKED,
    String? zOPTION1,
    String? zOPTION2,
    String? zOPTION3,
    String? zOPTION4,
    String? zQUESTIONCONTENT,
    String? zQUESTIONDIE,
    int? zQUESTIONTYPE,
    int? zWRONG,
    int? zENT,
    int? zPK,
  }) = _ZQuestion;

  const ZQuestion._();

  factory ZQuestion.fromJson(Map<String, Object?> json) =>
      _$ZQuestionFromJson(json);
}
