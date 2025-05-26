// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'table_notice_board_type.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TableNoticeBoardType _$TableNoticeBoardTypeFromJson(Map<String, dynamic> json) {
  return _TableNoticeBoardType.fromJson(json);
}

/// @nodoc
mixin _$TableNoticeBoardType {
  int? get Type_ID => throw _privateConstructorUsedError;
  String? get Type_Name => throw _privateConstructorUsedError;
  String? get Icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TableNoticeBoardTypeCopyWith<TableNoticeBoardType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TableNoticeBoardTypeCopyWith<$Res> {
  factory $TableNoticeBoardTypeCopyWith(TableNoticeBoardType value,
          $Res Function(TableNoticeBoardType) then) =
      _$TableNoticeBoardTypeCopyWithImpl<$Res, TableNoticeBoardType>;
  @useResult
  $Res call({int? Type_ID, String? Type_Name, String? Icon});
}

/// @nodoc
class _$TableNoticeBoardTypeCopyWithImpl<$Res,
        $Val extends TableNoticeBoardType>
    implements $TableNoticeBoardTypeCopyWith<$Res> {
  _$TableNoticeBoardTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Type_ID = freezed,
    Object? Type_Name = freezed,
    Object? Icon = freezed,
  }) {
    return _then(_value.copyWith(
      Type_ID: freezed == Type_ID
          ? _value.Type_ID
          : Type_ID // ignore: cast_nullable_to_non_nullable
              as int?,
      Type_Name: freezed == Type_Name
          ? _value.Type_Name
          : Type_Name // ignore: cast_nullable_to_non_nullable
              as String?,
      Icon: freezed == Icon
          ? _value.Icon
          : Icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TableNoticeBoardTypeImplCopyWith<$Res>
    implements $TableNoticeBoardTypeCopyWith<$Res> {
  factory _$$TableNoticeBoardTypeImplCopyWith(_$TableNoticeBoardTypeImpl value,
          $Res Function(_$TableNoticeBoardTypeImpl) then) =
      __$$TableNoticeBoardTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? Type_ID, String? Type_Name, String? Icon});
}

/// @nodoc
class __$$TableNoticeBoardTypeImplCopyWithImpl<$Res>
    extends _$TableNoticeBoardTypeCopyWithImpl<$Res, _$TableNoticeBoardTypeImpl>
    implements _$$TableNoticeBoardTypeImplCopyWith<$Res> {
  __$$TableNoticeBoardTypeImplCopyWithImpl(_$TableNoticeBoardTypeImpl _value,
      $Res Function(_$TableNoticeBoardTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Type_ID = freezed,
    Object? Type_Name = freezed,
    Object? Icon = freezed,
  }) {
    return _then(_$TableNoticeBoardTypeImpl(
      Type_ID: freezed == Type_ID
          ? _value.Type_ID
          : Type_ID // ignore: cast_nullable_to_non_nullable
              as int?,
      Type_Name: freezed == Type_Name
          ? _value.Type_Name
          : Type_Name // ignore: cast_nullable_to_non_nullable
              as String?,
      Icon: freezed == Icon
          ? _value.Icon
          : Icon // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TableNoticeBoardTypeImpl implements _TableNoticeBoardType {
  const _$TableNoticeBoardTypeImpl({this.Type_ID, this.Type_Name, this.Icon});

  factory _$TableNoticeBoardTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$TableNoticeBoardTypeImplFromJson(json);

  @override
  final int? Type_ID;
  @override
  final String? Type_Name;
  @override
  final String? Icon;

  @override
  String toString() {
    return 'TableNoticeBoardType(Type_ID: $Type_ID, Type_Name: $Type_Name, Icon: $Icon)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TableNoticeBoardTypeImpl &&
            (identical(other.Type_ID, Type_ID) || other.Type_ID == Type_ID) &&
            (identical(other.Type_Name, Type_Name) ||
                other.Type_Name == Type_Name) &&
            (identical(other.Icon, Icon) || other.Icon == Icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, Type_ID, Type_Name, Icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TableNoticeBoardTypeImplCopyWith<_$TableNoticeBoardTypeImpl>
      get copyWith =>
          __$$TableNoticeBoardTypeImplCopyWithImpl<_$TableNoticeBoardTypeImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TableNoticeBoardTypeImplToJson(
      this,
    );
  }
}

abstract class _TableNoticeBoardType implements TableNoticeBoardType {
  const factory _TableNoticeBoardType(
      {final int? Type_ID,
      final String? Type_Name,
      final String? Icon}) = _$TableNoticeBoardTypeImpl;

  factory _TableNoticeBoardType.fromJson(Map<String, dynamic> json) =
      _$TableNoticeBoardTypeImpl.fromJson;

  @override
  int? get Type_ID;
  @override
  String? get Type_Name;
  @override
  String? get Icon;
  @override
  @JsonKey(ignore: true)
  _$$TableNoticeBoardTypeImplCopyWith<_$TableNoticeBoardTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
