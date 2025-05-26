// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'table_notice_board.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TableNoticeBoardImpl _$$TableNoticeBoardImplFromJson(
        Map<String, dynamic> json) =>
    _$TableNoticeBoardImpl(
      ID: (json['ID'] as num?)?.toInt(),
      Type_ID: (json['Type_ID'] as num?)?.toInt(),
      Name: json['Name'] as String?,
      NameEN: json['NameEN'] as String?,
      Detail: json['Detail'] as String?,
      Icon: json['Icon'] as String?,
      UpdateDay: json['UpdateDay'] as String?,
      isDelete: (json['isDelete'] as num?)?.toInt(),
      ShortName: json['ShortName'] as String?,
      Description: json['Description'] as String?,
      DisplayOrder: json['DisplayOrder'] as String?,
    );

Map<String, dynamic> _$$TableNoticeBoardImplToJson(
        _$TableNoticeBoardImpl instance) =>
    <String, dynamic>{
      'ID': instance.ID,
      'Type_ID': instance.Type_ID,
      'Name': instance.Name,
      'NameEN': instance.NameEN,
      'Detail': instance.Detail,
      'Icon': instance.Icon,
      'UpdateDay': instance.UpdateDay,
      'isDelete': instance.isDelete,
      'ShortName': instance.ShortName,
      'Description': instance.Description,
      'DisplayOrder': instance.DisplayOrder,
    };
