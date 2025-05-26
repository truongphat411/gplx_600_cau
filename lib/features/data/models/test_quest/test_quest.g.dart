// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'test_quest.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TestQuestImpl _$$TestQuestImplFromJson(Map<String, dynamic> json) =>
    _$TestQuestImpl(
      ZQUESTIONID: (json['ZQUESTIONID'] as num?)?.toInt(),
      TESTID: (json['TESTID'] as num?)?.toInt(),
      ZTESTQUESTID: (json['ZTESTQUESTID'] as num?)?.toInt(),
      ZANSWER: json['ZANSWER'] as String?,
      ZHISTORY: json['ZHISTORY'] as String?,
      ZNUMBERWRONG: (json['ZNUMBERWRONG'] as num?)?.toInt(),
      ZRESULT: (json['ZRESULT'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$TestQuestImplToJson(_$TestQuestImpl instance) =>
    <String, dynamic>{
      'ZQUESTIONID': instance.ZQUESTIONID,
      'TESTID': instance.TESTID,
      'ZTESTQUESTID': instance.ZTESTQUESTID,
      'ZANSWER': instance.ZANSWER,
      'ZHISTORY': instance.ZHISTORY,
      'ZNUMBERWRONG': instance.ZNUMBERWRONG,
      'ZRESULT': instance.ZRESULT,
    };
