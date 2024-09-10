// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'znumberquestionpertype.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ZNumberQuestionPerType _$ZNumberQuestionPerTypeFromJson(
    Map<String, dynamic> json) {
  return _ZNumberQuestionPerType.fromJson(json);
}

/// @nodoc
mixin _$ZNumberQuestionPerType {
  int? get QUESTION_TYPE_PK => throw _privateConstructorUsedError;
  String? get ZTYPE_NAME => throw _privateConstructorUsedError;
  String? get ZDESC => throw _privateConstructorUsedError;
  int? get TOTALQUESTIONS => throw _privateConstructorUsedError;
  int? get TOTALQUESTIONSLEARNED => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZNumberQuestionPerTypeCopyWith<ZNumberQuestionPerType> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZNumberQuestionPerTypeCopyWith<$Res> {
  factory $ZNumberQuestionPerTypeCopyWith(ZNumberQuestionPerType value,
          $Res Function(ZNumberQuestionPerType) then) =
      _$ZNumberQuestionPerTypeCopyWithImpl<$Res, ZNumberQuestionPerType>;
  @useResult
  $Res call(
      {int? QUESTION_TYPE_PK,
      String? ZTYPE_NAME,
      String? ZDESC,
      int? TOTALQUESTIONS,
      int? TOTALQUESTIONSLEARNED});
}

/// @nodoc
class _$ZNumberQuestionPerTypeCopyWithImpl<$Res,
        $Val extends ZNumberQuestionPerType>
    implements $ZNumberQuestionPerTypeCopyWith<$Res> {
  _$ZNumberQuestionPerTypeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? QUESTION_TYPE_PK = freezed,
    Object? ZTYPE_NAME = freezed,
    Object? ZDESC = freezed,
    Object? TOTALQUESTIONS = freezed,
    Object? TOTALQUESTIONSLEARNED = freezed,
  }) {
    return _then(_value.copyWith(
      QUESTION_TYPE_PK: freezed == QUESTION_TYPE_PK
          ? _value.QUESTION_TYPE_PK
          : QUESTION_TYPE_PK // ignore: cast_nullable_to_non_nullable
              as int?,
      ZTYPE_NAME: freezed == ZTYPE_NAME
          ? _value.ZTYPE_NAME
          : ZTYPE_NAME // ignore: cast_nullable_to_non_nullable
              as String?,
      ZDESC: freezed == ZDESC
          ? _value.ZDESC
          : ZDESC // ignore: cast_nullable_to_non_nullable
              as String?,
      TOTALQUESTIONS: freezed == TOTALQUESTIONS
          ? _value.TOTALQUESTIONS
          : TOTALQUESTIONS // ignore: cast_nullable_to_non_nullable
              as int?,
      TOTALQUESTIONSLEARNED: freezed == TOTALQUESTIONSLEARNED
          ? _value.TOTALQUESTIONSLEARNED
          : TOTALQUESTIONSLEARNED // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ZNumberQuestionPerTypeImplCopyWith<$Res>
    implements $ZNumberQuestionPerTypeCopyWith<$Res> {
  factory _$$ZNumberQuestionPerTypeImplCopyWith(
          _$ZNumberQuestionPerTypeImpl value,
          $Res Function(_$ZNumberQuestionPerTypeImpl) then) =
      __$$ZNumberQuestionPerTypeImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? QUESTION_TYPE_PK,
      String? ZTYPE_NAME,
      String? ZDESC,
      int? TOTALQUESTIONS,
      int? TOTALQUESTIONSLEARNED});
}

/// @nodoc
class __$$ZNumberQuestionPerTypeImplCopyWithImpl<$Res>
    extends _$ZNumberQuestionPerTypeCopyWithImpl<$Res,
        _$ZNumberQuestionPerTypeImpl>
    implements _$$ZNumberQuestionPerTypeImplCopyWith<$Res> {
  __$$ZNumberQuestionPerTypeImplCopyWithImpl(
      _$ZNumberQuestionPerTypeImpl _value,
      $Res Function(_$ZNumberQuestionPerTypeImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? QUESTION_TYPE_PK = freezed,
    Object? ZTYPE_NAME = freezed,
    Object? ZDESC = freezed,
    Object? TOTALQUESTIONS = freezed,
    Object? TOTALQUESTIONSLEARNED = freezed,
  }) {
    return _then(_$ZNumberQuestionPerTypeImpl(
      QUESTION_TYPE_PK: freezed == QUESTION_TYPE_PK
          ? _value.QUESTION_TYPE_PK
          : QUESTION_TYPE_PK // ignore: cast_nullable_to_non_nullable
              as int?,
      ZTYPE_NAME: freezed == ZTYPE_NAME
          ? _value.ZTYPE_NAME
          : ZTYPE_NAME // ignore: cast_nullable_to_non_nullable
              as String?,
      ZDESC: freezed == ZDESC
          ? _value.ZDESC
          : ZDESC // ignore: cast_nullable_to_non_nullable
              as String?,
      TOTALQUESTIONS: freezed == TOTALQUESTIONS
          ? _value.TOTALQUESTIONS
          : TOTALQUESTIONS // ignore: cast_nullable_to_non_nullable
              as int?,
      TOTALQUESTIONSLEARNED: freezed == TOTALQUESTIONSLEARNED
          ? _value.TOTALQUESTIONSLEARNED
          : TOTALQUESTIONSLEARNED // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ZNumberQuestionPerTypeImpl extends _ZNumberQuestionPerType {
  const _$ZNumberQuestionPerTypeImpl(
      {this.QUESTION_TYPE_PK,
      this.ZTYPE_NAME,
      this.ZDESC,
      this.TOTALQUESTIONS,
      this.TOTALQUESTIONSLEARNED})
      : super._();

  factory _$ZNumberQuestionPerTypeImpl.fromJson(Map<String, dynamic> json) =>
      _$$ZNumberQuestionPerTypeImplFromJson(json);

  @override
  final int? QUESTION_TYPE_PK;
  @override
  final String? ZTYPE_NAME;
  @override
  final String? ZDESC;
  @override
  final int? TOTALQUESTIONS;
  @override
  final int? TOTALQUESTIONSLEARNED;

  @override
  String toString() {
    return 'ZNumberQuestionPerType(QUESTION_TYPE_PK: $QUESTION_TYPE_PK, ZTYPE_NAME: $ZTYPE_NAME, ZDESC: $ZDESC, TOTALQUESTIONS: $TOTALQUESTIONS, TOTALQUESTIONSLEARNED: $TOTALQUESTIONSLEARNED)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZNumberQuestionPerTypeImpl &&
            (identical(other.QUESTION_TYPE_PK, QUESTION_TYPE_PK) ||
                other.QUESTION_TYPE_PK == QUESTION_TYPE_PK) &&
            (identical(other.ZTYPE_NAME, ZTYPE_NAME) ||
                other.ZTYPE_NAME == ZTYPE_NAME) &&
            (identical(other.ZDESC, ZDESC) || other.ZDESC == ZDESC) &&
            (identical(other.TOTALQUESTIONS, TOTALQUESTIONS) ||
                other.TOTALQUESTIONS == TOTALQUESTIONS) &&
            (identical(other.TOTALQUESTIONSLEARNED, TOTALQUESTIONSLEARNED) ||
                other.TOTALQUESTIONSLEARNED == TOTALQUESTIONSLEARNED));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, QUESTION_TYPE_PK, ZTYPE_NAME,
      ZDESC, TOTALQUESTIONS, TOTALQUESTIONSLEARNED);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZNumberQuestionPerTypeImplCopyWith<_$ZNumberQuestionPerTypeImpl>
      get copyWith => __$$ZNumberQuestionPerTypeImplCopyWithImpl<
          _$ZNumberQuestionPerTypeImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ZNumberQuestionPerTypeImplToJson(
      this,
    );
  }
}

abstract class _ZNumberQuestionPerType extends ZNumberQuestionPerType {
  const factory _ZNumberQuestionPerType(
      {final int? QUESTION_TYPE_PK,
      final String? ZTYPE_NAME,
      final String? ZDESC,
      final int? TOTALQUESTIONS,
      final int? TOTALQUESTIONSLEARNED}) = _$ZNumberQuestionPerTypeImpl;
  const _ZNumberQuestionPerType._() : super._();

  factory _ZNumberQuestionPerType.fromJson(Map<String, dynamic> json) =
      _$ZNumberQuestionPerTypeImpl.fromJson;

  @override
  int? get QUESTION_TYPE_PK;
  @override
  String? get ZTYPE_NAME;
  @override
  String? get ZDESC;
  @override
  int? get TOTALQUESTIONS;
  @override
  int? get TOTALQUESTIONSLEARNED;
  @override
  @JsonKey(ignore: true)
  _$$ZNumberQuestionPerTypeImplCopyWith<_$ZNumberQuestionPerTypeImpl>
      get copyWith => throw _privateConstructorUsedError;
}
