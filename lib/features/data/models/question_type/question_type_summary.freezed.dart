// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_type_summary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

QuestionTypeSummary _$QuestionTypeSummaryFromJson(Map<String, dynamic> json) {
  return _QuestionTypeSummary.fromJson(json);
}

/// @nodoc
mixin _$QuestionTypeSummary {
  int? get QUESTION_TYPE_PK => throw _privateConstructorUsedError;
  String? get ZTYPE_NAME => throw _privateConstructorUsedError;
  int? get TOTAL_QUESTIONS_LEARNED => throw _privateConstructorUsedError;
  int? get TOTAL_QUESTIONS => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $QuestionTypeSummaryCopyWith<QuestionTypeSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionTypeSummaryCopyWith<$Res> {
  factory $QuestionTypeSummaryCopyWith(
          QuestionTypeSummary value, $Res Function(QuestionTypeSummary) then) =
      _$QuestionTypeSummaryCopyWithImpl<$Res, QuestionTypeSummary>;
  @useResult
  $Res call(
      {int? QUESTION_TYPE_PK,
      String? ZTYPE_NAME,
      int? TOTAL_QUESTIONS_LEARNED,
      int? TOTAL_QUESTIONS});
}

/// @nodoc
class _$QuestionTypeSummaryCopyWithImpl<$Res, $Val extends QuestionTypeSummary>
    implements $QuestionTypeSummaryCopyWith<$Res> {
  _$QuestionTypeSummaryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? QUESTION_TYPE_PK = freezed,
    Object? ZTYPE_NAME = freezed,
    Object? TOTAL_QUESTIONS_LEARNED = freezed,
    Object? TOTAL_QUESTIONS = freezed,
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
      TOTAL_QUESTIONS_LEARNED: freezed == TOTAL_QUESTIONS_LEARNED
          ? _value.TOTAL_QUESTIONS_LEARNED
          : TOTAL_QUESTIONS_LEARNED // ignore: cast_nullable_to_non_nullable
              as int?,
      TOTAL_QUESTIONS: freezed == TOTAL_QUESTIONS
          ? _value.TOTAL_QUESTIONS
          : TOTAL_QUESTIONS // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionTypeSummaryImplCopyWith<$Res>
    implements $QuestionTypeSummaryCopyWith<$Res> {
  factory _$$QuestionTypeSummaryImplCopyWith(_$QuestionTypeSummaryImpl value,
          $Res Function(_$QuestionTypeSummaryImpl) then) =
      __$$QuestionTypeSummaryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? QUESTION_TYPE_PK,
      String? ZTYPE_NAME,
      int? TOTAL_QUESTIONS_LEARNED,
      int? TOTAL_QUESTIONS});
}

/// @nodoc
class __$$QuestionTypeSummaryImplCopyWithImpl<$Res>
    extends _$QuestionTypeSummaryCopyWithImpl<$Res, _$QuestionTypeSummaryImpl>
    implements _$$QuestionTypeSummaryImplCopyWith<$Res> {
  __$$QuestionTypeSummaryImplCopyWithImpl(_$QuestionTypeSummaryImpl _value,
      $Res Function(_$QuestionTypeSummaryImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? QUESTION_TYPE_PK = freezed,
    Object? ZTYPE_NAME = freezed,
    Object? TOTAL_QUESTIONS_LEARNED = freezed,
    Object? TOTAL_QUESTIONS = freezed,
  }) {
    return _then(_$QuestionTypeSummaryImpl(
      QUESTION_TYPE_PK: freezed == QUESTION_TYPE_PK
          ? _value.QUESTION_TYPE_PK
          : QUESTION_TYPE_PK // ignore: cast_nullable_to_non_nullable
              as int?,
      ZTYPE_NAME: freezed == ZTYPE_NAME
          ? _value.ZTYPE_NAME
          : ZTYPE_NAME // ignore: cast_nullable_to_non_nullable
              as String?,
      TOTAL_QUESTIONS_LEARNED: freezed == TOTAL_QUESTIONS_LEARNED
          ? _value.TOTAL_QUESTIONS_LEARNED
          : TOTAL_QUESTIONS_LEARNED // ignore: cast_nullable_to_non_nullable
              as int?,
      TOTAL_QUESTIONS: freezed == TOTAL_QUESTIONS
          ? _value.TOTAL_QUESTIONS
          : TOTAL_QUESTIONS // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$QuestionTypeSummaryImpl extends _QuestionTypeSummary {
  const _$QuestionTypeSummaryImpl(
      {this.QUESTION_TYPE_PK,
      this.ZTYPE_NAME,
      this.TOTAL_QUESTIONS_LEARNED,
      this.TOTAL_QUESTIONS})
      : super._();

  factory _$QuestionTypeSummaryImpl.fromJson(Map<String, dynamic> json) =>
      _$$QuestionTypeSummaryImplFromJson(json);

  @override
  final int? QUESTION_TYPE_PK;
  @override
  final String? ZTYPE_NAME;
  @override
  final int? TOTAL_QUESTIONS_LEARNED;
  @override
  final int? TOTAL_QUESTIONS;

  @override
  String toString() {
    return 'QuestionTypeSummary(QUESTION_TYPE_PK: $QUESTION_TYPE_PK, ZTYPE_NAME: $ZTYPE_NAME, TOTAL_QUESTIONS_LEARNED: $TOTAL_QUESTIONS_LEARNED, TOTAL_QUESTIONS: $TOTAL_QUESTIONS)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionTypeSummaryImpl &&
            (identical(other.QUESTION_TYPE_PK, QUESTION_TYPE_PK) ||
                other.QUESTION_TYPE_PK == QUESTION_TYPE_PK) &&
            (identical(other.ZTYPE_NAME, ZTYPE_NAME) ||
                other.ZTYPE_NAME == ZTYPE_NAME) &&
            (identical(
                    other.TOTAL_QUESTIONS_LEARNED, TOTAL_QUESTIONS_LEARNED) ||
                other.TOTAL_QUESTIONS_LEARNED == TOTAL_QUESTIONS_LEARNED) &&
            (identical(other.TOTAL_QUESTIONS, TOTAL_QUESTIONS) ||
                other.TOTAL_QUESTIONS == TOTAL_QUESTIONS));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, QUESTION_TYPE_PK, ZTYPE_NAME,
      TOTAL_QUESTIONS_LEARNED, TOTAL_QUESTIONS);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionTypeSummaryImplCopyWith<_$QuestionTypeSummaryImpl> get copyWith =>
      __$$QuestionTypeSummaryImplCopyWithImpl<_$QuestionTypeSummaryImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$QuestionTypeSummaryImplToJson(
      this,
    );
  }
}

abstract class _QuestionTypeSummary extends QuestionTypeSummary {
  const factory _QuestionTypeSummary(
      {final int? QUESTION_TYPE_PK,
      final String? ZTYPE_NAME,
      final int? TOTAL_QUESTIONS_LEARNED,
      final int? TOTAL_QUESTIONS}) = _$QuestionTypeSummaryImpl;
  const _QuestionTypeSummary._() : super._();

  factory _QuestionTypeSummary.fromJson(Map<String, dynamic> json) =
      _$QuestionTypeSummaryImpl.fromJson;

  @override
  int? get QUESTION_TYPE_PK;
  @override
  String? get ZTYPE_NAME;
  @override
  int? get TOTAL_QUESTIONS_LEARNED;
  @override
  int? get TOTAL_QUESTIONS;
  @override
  @JsonKey(ignore: true)
  _$$QuestionTypeSummaryImplCopyWith<_$QuestionTypeSummaryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
