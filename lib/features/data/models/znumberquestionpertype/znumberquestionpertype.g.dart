// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'znumberquestionpertype.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ZNumberQuestionPerTypeImpl _$$ZNumberQuestionPerTypeImplFromJson(
        Map<String, dynamic> json) =>
    _$ZNumberQuestionPerTypeImpl(
      ZTYPE_NAME: json['ZTYPE_NAME'] as String?,
      ZDESC: json['ZDESC'] as String?,
      TOTALQUESTIONS: (json['TOTALQUESTIONS'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ZNumberQuestionPerTypeImplToJson(
        _$ZNumberQuestionPerTypeImpl instance) =>
    <String, dynamic>{
      'ZTYPE_NAME': instance.ZTYPE_NAME,
      'ZDESC': instance.ZDESC,
      'TOTALQUESTIONS': instance.TOTALQUESTIONS,
    };
