// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TestImpl _$$TestImplFromJson(Map<String, dynamic> json) => _$TestImpl(
      IDTEST: (json['IDTEST'] as num?)?.toInt(),
      NAME_TEST: (json['NAME_TEST'] as num?)?.toInt(),
      CLASS_LICENSE: json['CLASS_LICENSE'] as String?,
      SPEND_TIME: (json['SPEND_TIME'] as num?)?.toInt(),
      TEST_SCORE: (json['TEST_SCORE'] as num?)?.toInt(),
      ISPASS: (json['ISPASS'] as num?)?.toInt(),
      LASTDURATION: (json['LASTDURATION'] as num?)?.toInt(),
      LAST_INDEX: (json['LAST_INDEX'] as num?)?.toInt(),
      STATUS: (json['STATUS'] as num?)?.toInt(),
      WRONG_NUMBER: (json['WRONG_NUMBER'] as num?)?.toInt(),
      YET_NUMBER: (json['YET_NUMBER'] as num?)?.toInt(),
      SOS_VIOLATION: (json['SOS_VIOLATION'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TestImplToJson(_$TestImpl instance) =>
    <String, dynamic>{
      'IDTEST': instance.IDTEST,
      'NAME_TEST': instance.NAME_TEST,
      'CLASS_LICENSE': instance.CLASS_LICENSE,
      'SPEND_TIME': instance.SPEND_TIME,
      'TEST_SCORE': instance.TEST_SCORE,
      'ISPASS': instance.ISPASS,
      'LASTDURATION': instance.LASTDURATION,
      'LAST_INDEX': instance.LAST_INDEX,
      'STATUS': instance.STATUS,
      'WRONG_NUMBER': instance.WRONG_NUMBER,
      'YET_NUMBER': instance.YET_NUMBER,
      'SOS_VIOLATION': instance.SOS_VIOLATION,
    };
