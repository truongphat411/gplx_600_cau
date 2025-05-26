// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'question_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$QuestionTypeImpl _$$QuestionTypeImplFromJson(Map<String, dynamic> json) =>
    _$QuestionTypeImpl(
      Z_PK: (json['Z_PK'] as num?)?.toInt(),
      Z_ENT: (json['Z_ENT'] as num?)?.toInt(),
      Z_OPT: (json['Z_OPT'] as num?)?.toInt(),
      ZDESC: json['ZDESC'] as String?,
      ZID: json['ZID'] as String?,
      ZTYPE_NAME: json['ZTYPE_NAME'] as String?,
      ZCURRENT_INDEX: (json['ZCURRENT_INDEX'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$QuestionTypeImplToJson(_$QuestionTypeImpl instance) =>
    <String, dynamic>{
      'Z_PK': instance.Z_PK,
      'Z_ENT': instance.Z_ENT,
      'Z_OPT': instance.Z_OPT,
      'ZDESC': instance.ZDESC,
      'ZID': instance.ZID,
      'ZTYPE_NAME': instance.ZTYPE_NAME,
      'ZCURRENT_INDEX': instance.ZCURRENT_INDEX,
    };
