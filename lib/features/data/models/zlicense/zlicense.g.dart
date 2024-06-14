// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zlicense.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ZLicenseImpl _$$ZLicenseImplFromJson(Map<String, dynamic> json) =>
    _$ZLicenseImpl(
      ZCONTENT: json['ZCONTENT'] as String?,
      ZDESC: json['ZDESC'] as String?,
      ZDURATION: (json['ZDURATION'] as num?)?.toInt(),
      ZNAME: json['ZNAME'] as String?,
      ZNUMBEROFCORRECTQUESTION:
          (json['ZNUMBEROFCORRECTQUESTION'] as num?)?.toInt(),
      zNUMBEROFQUESTION: (json['zNUMBEROFQUESTION'] as num?)?.toInt(),
      zNUMBEROFTEST: (json['zNUMBEROFTEST'] as num?)?.toInt(),
      Z_ENT: (json['Z_ENT'] as num?)?.toInt(),
      Z_OPT: (json['Z_OPT'] as num?)?.toInt(),
      Z_PK: (json['Z_PK'] as num?)?.toInt(),
    );

Map<String, dynamic> _$$ZLicenseImplToJson(_$ZLicenseImpl instance) =>
    <String, dynamic>{
      'ZCONTENT': instance.ZCONTENT,
      'ZDESC': instance.ZDESC,
      'ZDURATION': instance.ZDURATION,
      'ZNAME': instance.ZNAME,
      'ZNUMBEROFCORRECTQUESTION': instance.ZNUMBEROFCORRECTQUESTION,
      'zNUMBEROFQUESTION': instance.zNUMBEROFQUESTION,
      'zNUMBEROFTEST': instance.zNUMBEROFTEST,
      'Z_ENT': instance.Z_ENT,
      'Z_OPT': instance.Z_OPT,
      'Z_PK': instance.Z_PK,
    };
