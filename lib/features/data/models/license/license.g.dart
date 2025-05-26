// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'license.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ZLicenseImpl _$$ZLicenseImplFromJson(Map<String, dynamic> json) =>
    _$ZLicenseImpl(
      Z_PK: (json['Z_PK'] as num?)?.toInt(),
      Z_ENT: (json['Z_ENT'] as num?)?.toInt(),
      Z_OPT: (json['Z_OPT'] as num?)?.toInt(),
      ZNAME: json['ZNAME'] as String?,
      ZNUMBEROFQUESTION: (json['ZNUMBEROFQUESTION'] as num?)?.toInt(),
      ZPASSSCORE: (json['ZPASSSCORE'] as num?)?.toInt(),
      ZEXAMPERIOD: (json['ZEXAMPERIOD'] as num?)?.toDouble(),
      ZNUMBEROFTEST: (json['ZNUMBEROFTEST'] as num?)?.toInt(),
      ZCONTENT: json['ZCONTENT'] as String?,
      ZDESC: json['ZDESC'] as String?,
      ZDESC_EN: json['ZDESC_EN'] as String?,
    );

Map<String, dynamic> _$$ZLicenseImplToJson(_$ZLicenseImpl instance) =>
    <String, dynamic>{
      'Z_PK': instance.Z_PK,
      'Z_ENT': instance.Z_ENT,
      'Z_OPT': instance.Z_OPT,
      'ZNAME': instance.ZNAME,
      'ZNUMBEROFQUESTION': instance.ZNUMBEROFQUESTION,
      'ZPASSSCORE': instance.ZPASSSCORE,
      'ZEXAMPERIOD': instance.ZEXAMPERIOD,
      'ZNUMBEROFTEST': instance.ZNUMBEROFTEST,
      'ZCONTENT': instance.ZCONTENT,
      'ZDESC': instance.ZDESC,
      'ZDESC_EN': instance.ZDESC_EN,
    };
