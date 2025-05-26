// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'test_quest.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TestQuest _$TestQuestFromJson(Map<String, dynamic> json) {
  return _TestQuest.fromJson(json);
}

/// @nodoc
mixin _$TestQuest {
  int? get ZQUESTIONID => throw _privateConstructorUsedError;
  int? get TESTID => throw _privateConstructorUsedError;
  int? get ZTESTQUESTID => throw _privateConstructorUsedError;
  String? get ZANSWER => throw _privateConstructorUsedError;
  String? get ZHISTORY => throw _privateConstructorUsedError;
  int? get ZNUMBERWRONG => throw _privateConstructorUsedError;
  int? get ZRESULT => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TestQuestCopyWith<TestQuest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TestQuestCopyWith<$Res> {
  factory $TestQuestCopyWith(TestQuest value, $Res Function(TestQuest) then) =
      _$TestQuestCopyWithImpl<$Res, TestQuest>;
  @useResult
  $Res call(
      {int? ZQUESTIONID,
      int? TESTID,
      int? ZTESTQUESTID,
      String? ZANSWER,
      String? ZHISTORY,
      int? ZNUMBERWRONG,
      int? ZRESULT});
}

/// @nodoc
class _$TestQuestCopyWithImpl<$Res, $Val extends TestQuest>
    implements $TestQuestCopyWith<$Res> {
  _$TestQuestCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ZQUESTIONID = freezed,
    Object? TESTID = freezed,
    Object? ZTESTQUESTID = freezed,
    Object? ZANSWER = freezed,
    Object? ZHISTORY = freezed,
    Object? ZNUMBERWRONG = freezed,
    Object? ZRESULT = freezed,
  }) {
    return _then(_value.copyWith(
      ZQUESTIONID: freezed == ZQUESTIONID
          ? _value.ZQUESTIONID
          : ZQUESTIONID // ignore: cast_nullable_to_non_nullable
              as int?,
      TESTID: freezed == TESTID
          ? _value.TESTID
          : TESTID // ignore: cast_nullable_to_non_nullable
              as int?,
      ZTESTQUESTID: freezed == ZTESTQUESTID
          ? _value.ZTESTQUESTID
          : ZTESTQUESTID // ignore: cast_nullable_to_non_nullable
              as int?,
      ZANSWER: freezed == ZANSWER
          ? _value.ZANSWER
          : ZANSWER // ignore: cast_nullable_to_non_nullable
              as String?,
      ZHISTORY: freezed == ZHISTORY
          ? _value.ZHISTORY
          : ZHISTORY // ignore: cast_nullable_to_non_nullable
              as String?,
      ZNUMBERWRONG: freezed == ZNUMBERWRONG
          ? _value.ZNUMBERWRONG
          : ZNUMBERWRONG // ignore: cast_nullable_to_non_nullable
              as int?,
      ZRESULT: freezed == ZRESULT
          ? _value.ZRESULT
          : ZRESULT // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TestQuestImplCopyWith<$Res>
    implements $TestQuestCopyWith<$Res> {
  factory _$$TestQuestImplCopyWith(
          _$TestQuestImpl value, $Res Function(_$TestQuestImpl) then) =
      __$$TestQuestImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? ZQUESTIONID,
      int? TESTID,
      int? ZTESTQUESTID,
      String? ZANSWER,
      String? ZHISTORY,
      int? ZNUMBERWRONG,
      int? ZRESULT});
}

/// @nodoc
class __$$TestQuestImplCopyWithImpl<$Res>
    extends _$TestQuestCopyWithImpl<$Res, _$TestQuestImpl>
    implements _$$TestQuestImplCopyWith<$Res> {
  __$$TestQuestImplCopyWithImpl(
      _$TestQuestImpl _value, $Res Function(_$TestQuestImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ZQUESTIONID = freezed,
    Object? TESTID = freezed,
    Object? ZTESTQUESTID = freezed,
    Object? ZANSWER = freezed,
    Object? ZHISTORY = freezed,
    Object? ZNUMBERWRONG = freezed,
    Object? ZRESULT = freezed,
  }) {
    return _then(_$TestQuestImpl(
      ZQUESTIONID: freezed == ZQUESTIONID
          ? _value.ZQUESTIONID
          : ZQUESTIONID // ignore: cast_nullable_to_non_nullable
              as int?,
      TESTID: freezed == TESTID
          ? _value.TESTID
          : TESTID // ignore: cast_nullable_to_non_nullable
              as int?,
      ZTESTQUESTID: freezed == ZTESTQUESTID
          ? _value.ZTESTQUESTID
          : ZTESTQUESTID // ignore: cast_nullable_to_non_nullable
              as int?,
      ZANSWER: freezed == ZANSWER
          ? _value.ZANSWER
          : ZANSWER // ignore: cast_nullable_to_non_nullable
              as String?,
      ZHISTORY: freezed == ZHISTORY
          ? _value.ZHISTORY
          : ZHISTORY // ignore: cast_nullable_to_non_nullable
              as String?,
      ZNUMBERWRONG: freezed == ZNUMBERWRONG
          ? _value.ZNUMBERWRONG
          : ZNUMBERWRONG // ignore: cast_nullable_to_non_nullable
              as int?,
      ZRESULT: freezed == ZRESULT
          ? _value.ZRESULT
          : ZRESULT // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TestQuestImpl implements _TestQuest {
  const _$TestQuestImpl(
      {this.ZQUESTIONID,
      this.TESTID,
      this.ZTESTQUESTID,
      this.ZANSWER,
      this.ZHISTORY,
      this.ZNUMBERWRONG,
      this.ZRESULT});

  factory _$TestQuestImpl.fromJson(Map<String, dynamic> json) =>
      _$$TestQuestImplFromJson(json);

  @override
  final int? ZQUESTIONID;
  @override
  final int? TESTID;
  @override
  final int? ZTESTQUESTID;
  @override
  final String? ZANSWER;
  @override
  final String? ZHISTORY;
  @override
  final int? ZNUMBERWRONG;
  @override
  final int? ZRESULT;

  @override
  String toString() {
    return 'TestQuest(ZQUESTIONID: $ZQUESTIONID, TESTID: $TESTID, ZTESTQUESTID: $ZTESTQUESTID, ZANSWER: $ZANSWER, ZHISTORY: $ZHISTORY, ZNUMBERWRONG: $ZNUMBERWRONG, ZRESULT: $ZRESULT)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TestQuestImpl &&
            (identical(other.ZQUESTIONID, ZQUESTIONID) ||
                other.ZQUESTIONID == ZQUESTIONID) &&
            (identical(other.TESTID, TESTID) || other.TESTID == TESTID) &&
            (identical(other.ZTESTQUESTID, ZTESTQUESTID) ||
                other.ZTESTQUESTID == ZTESTQUESTID) &&
            (identical(other.ZANSWER, ZANSWER) || other.ZANSWER == ZANSWER) &&
            (identical(other.ZHISTORY, ZHISTORY) ||
                other.ZHISTORY == ZHISTORY) &&
            (identical(other.ZNUMBERWRONG, ZNUMBERWRONG) ||
                other.ZNUMBERWRONG == ZNUMBERWRONG) &&
            (identical(other.ZRESULT, ZRESULT) || other.ZRESULT == ZRESULT));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, ZQUESTIONID, TESTID,
      ZTESTQUESTID, ZANSWER, ZHISTORY, ZNUMBERWRONG, ZRESULT);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TestQuestImplCopyWith<_$TestQuestImpl> get copyWith =>
      __$$TestQuestImplCopyWithImpl<_$TestQuestImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TestQuestImplToJson(
      this,
    );
  }
}

abstract class _TestQuest implements TestQuest {
  const factory _TestQuest(
      {final int? ZQUESTIONID,
      final int? TESTID,
      final int? ZTESTQUESTID,
      final String? ZANSWER,
      final String? ZHISTORY,
      final int? ZNUMBERWRONG,
      final int? ZRESULT}) = _$TestQuestImpl;

  factory _TestQuest.fromJson(Map<String, dynamic> json) =
      _$TestQuestImpl.fromJson;

  @override
  int? get ZQUESTIONID;
  @override
  int? get TESTID;
  @override
  int? get ZTESTQUESTID;
  @override
  String? get ZANSWER;
  @override
  String? get ZHISTORY;
  @override
  int? get ZNUMBERWRONG;
  @override
  int? get ZRESULT;
  @override
  @JsonKey(ignore: true)
  _$$TestQuestImplCopyWith<_$TestQuestImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
