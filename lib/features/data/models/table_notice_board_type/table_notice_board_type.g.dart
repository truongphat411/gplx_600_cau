// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_notice_board_type.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TableNoticeBoardTypeImpl _$$TableNoticeBoardTypeImplFromJson(
        Map<String, dynamic> json) =>
    _$TableNoticeBoardTypeImpl(
      Type_ID: (json['Type_ID'] as num?)?.toInt(),
      Type_Name: json['Type_Name'] as String?,
      Icon: json['Icon'] as String?,
    );

Map<String, dynamic> _$$TableNoticeBoardTypeImplToJson(
        _$TableNoticeBoardTypeImpl instance) =>
    <String, dynamic>{
      'Type_ID': instance.Type_ID,
      'Type_Name': instance.Type_Name,
      'Icon': instance.Icon,
    };
