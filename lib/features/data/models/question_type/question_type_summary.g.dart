// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_type_summary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionTypeSummaryImpl _$$QuestionTypeSummaryImplFromJson(
        Map<String, dynamic> json) =>
    _$QuestionTypeSummaryImpl(
      QUESTION_TYPE_PK: (json['QUESTION_TYPE_PK'] as num?)?.toInt(),
      ZTYPE_NAME: json['ZTYPE_NAME'] as String?,
      TOTAL_QUESTIONS_LEARNED:
          (json['TOTAL_QUESTIONS_LEARNED'] as num?)?.toInt(),
      TOTAL_QUESTIONS: (json['TOTAL_QUESTIONS'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$QuestionTypeSummaryImplToJson(
        _$QuestionTypeSummaryImpl instance) =>
    <String, dynamic>{
      'QUESTION_TYPE_PK': instance.QUESTION_TYPE_PK,
      'ZTYPE_NAME': instance.ZTYPE_NAME,
      'TOTAL_QUESTIONS_LEARNED': instance.TOTAL_QUESTIONS_LEARNED,
      'TOTAL_QUESTIONS': instance.TOTAL_QUESTIONS,
    };
