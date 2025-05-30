// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$HomeEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() insertData,
    required TResult Function() loading,
    required TResult Function(Exception error) failure,
    required TResult Function(
            String licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)
        data,
    required TResult Function(Question question) updateQuestion,
    required TResult Function(String licenseName) updateLicense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? insertData,
    TResult? Function()? loading,
    TResult? Function(Exception error)? failure,
    TResult? Function(
            String licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)?
        data,
    TResult? Function(Question question)? updateQuestion,
    TResult? Function(String licenseName)? updateLicense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? insertData,
    TResult Function()? loading,
    TResult Function(Exception error)? failure,
    TResult Function(
            String licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)?
        data,
    TResult Function(Question question)? updateQuestion,
    TResult Function(String licenseName)? updateLicense,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventInsertData value) insertData,
    required TResult Function(HomeEventLoading value) loading,
    required TResult Function(HomeEventFailure value) failure,
    required TResult Function(HomeEventData value) data,
    required TResult Function(HomeEventUpdateQuestion value) updateQuestion,
    required TResult Function(HomeEventUpdateLicense value) updateLicense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventInsertData value)? insertData,
    TResult? Function(HomeEventLoading value)? loading,
    TResult? Function(HomeEventFailure value)? failure,
    TResult? Function(HomeEventData value)? data,
    TResult? Function(HomeEventUpdateQuestion value)? updateQuestion,
    TResult? Function(HomeEventUpdateLicense value)? updateLicense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventInsertData value)? insertData,
    TResult Function(HomeEventLoading value)? loading,
    TResult Function(HomeEventFailure value)? failure,
    TResult Function(HomeEventData value)? data,
    TResult Function(HomeEventUpdateQuestion value)? updateQuestion,
    TResult Function(HomeEventUpdateLicense value)? updateLicense,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeEventCopyWith<$Res> {
  factory $HomeEventCopyWith(HomeEvent value, $Res Function(HomeEvent) then) =
      _$HomeEventCopyWithImpl<$Res, HomeEvent>;
}

/// @nodoc
class _$HomeEventCopyWithImpl<$Res, $Val extends HomeEvent>
    implements $HomeEventCopyWith<$Res> {
  _$HomeEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeEventInsertDataImplCopyWith<$Res> {
  factory _$$HomeEventInsertDataImplCopyWith(_$HomeEventInsertDataImpl value,
          $Res Function(_$HomeEventInsertDataImpl) then) =
      __$$HomeEventInsertDataImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeEventInsertDataImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeEventInsertDataImpl>
    implements _$$HomeEventInsertDataImplCopyWith<$Res> {
  __$$HomeEventInsertDataImplCopyWithImpl(_$HomeEventInsertDataImpl _value,
      $Res Function(_$HomeEventInsertDataImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeEventInsertDataImpl implements HomeEventInsertData {
  const _$HomeEventInsertDataImpl();

  @override
  String toString() {
    return 'HomeEvent.insertData()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEventInsertDataImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() insertData,
    required TResult Function() loading,
    required TResult Function(Exception error) failure,
    required TResult Function(
            String licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)
        data,
    required TResult Function(Question question) updateQuestion,
    required TResult Function(String licenseName) updateLicense,
  }) {
    return insertData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? insertData,
    TResult? Function()? loading,
    TResult? Function(Exception error)? failure,
    TResult? Function(
            String licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)?
        data,
    TResult? Function(Question question)? updateQuestion,
    TResult? Function(String licenseName)? updateLicense,
  }) {
    return insertData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? insertData,
    TResult Function()? loading,
    TResult Function(Exception error)? failure,
    TResult Function(
            String licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)?
        data,
    TResult Function(Question question)? updateQuestion,
    TResult Function(String licenseName)? updateLicense,
    required TResult orElse(),
  }) {
    if (insertData != null) {
      return insertData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventInsertData value) insertData,
    required TResult Function(HomeEventLoading value) loading,
    required TResult Function(HomeEventFailure value) failure,
    required TResult Function(HomeEventData value) data,
    required TResult Function(HomeEventUpdateQuestion value) updateQuestion,
    required TResult Function(HomeEventUpdateLicense value) updateLicense,
  }) {
    return insertData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventInsertData value)? insertData,
    TResult? Function(HomeEventLoading value)? loading,
    TResult? Function(HomeEventFailure value)? failure,
    TResult? Function(HomeEventData value)? data,
    TResult? Function(HomeEventUpdateQuestion value)? updateQuestion,
    TResult? Function(HomeEventUpdateLicense value)? updateLicense,
  }) {
    return insertData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventInsertData value)? insertData,
    TResult Function(HomeEventLoading value)? loading,
    TResult Function(HomeEventFailure value)? failure,
    TResult Function(HomeEventData value)? data,
    TResult Function(HomeEventUpdateQuestion value)? updateQuestion,
    TResult Function(HomeEventUpdateLicense value)? updateLicense,
    required TResult orElse(),
  }) {
    if (insertData != null) {
      return insertData(this);
    }
    return orElse();
  }
}

abstract class HomeEventInsertData implements HomeEvent {
  const factory HomeEventInsertData() = _$HomeEventInsertDataImpl;
}

/// @nodoc
abstract class _$$HomeEventLoadingImplCopyWith<$Res> {
  factory _$$HomeEventLoadingImplCopyWith(_$HomeEventLoadingImpl value,
          $Res Function(_$HomeEventLoadingImpl) then) =
      __$$HomeEventLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeEventLoadingImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeEventLoadingImpl>
    implements _$$HomeEventLoadingImplCopyWith<$Res> {
  __$$HomeEventLoadingImplCopyWithImpl(_$HomeEventLoadingImpl _value,
      $Res Function(_$HomeEventLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeEventLoadingImpl implements HomeEventLoading {
  const _$HomeEventLoadingImpl();

  @override
  String toString() {
    return 'HomeEvent.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeEventLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() insertData,
    required TResult Function() loading,
    required TResult Function(Exception error) failure,
    required TResult Function(
            String licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)
        data,
    required TResult Function(Question question) updateQuestion,
    required TResult Function(String licenseName) updateLicense,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? insertData,
    TResult? Function()? loading,
    TResult? Function(Exception error)? failure,
    TResult? Function(
            String licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)?
        data,
    TResult? Function(Question question)? updateQuestion,
    TResult? Function(String licenseName)? updateLicense,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? insertData,
    TResult Function()? loading,
    TResult Function(Exception error)? failure,
    TResult Function(
            String licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)?
        data,
    TResult Function(Question question)? updateQuestion,
    TResult Function(String licenseName)? updateLicense,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventInsertData value) insertData,
    required TResult Function(HomeEventLoading value) loading,
    required TResult Function(HomeEventFailure value) failure,
    required TResult Function(HomeEventData value) data,
    required TResult Function(HomeEventUpdateQuestion value) updateQuestion,
    required TResult Function(HomeEventUpdateLicense value) updateLicense,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventInsertData value)? insertData,
    TResult? Function(HomeEventLoading value)? loading,
    TResult? Function(HomeEventFailure value)? failure,
    TResult? Function(HomeEventData value)? data,
    TResult? Function(HomeEventUpdateQuestion value)? updateQuestion,
    TResult? Function(HomeEventUpdateLicense value)? updateLicense,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventInsertData value)? insertData,
    TResult Function(HomeEventLoading value)? loading,
    TResult Function(HomeEventFailure value)? failure,
    TResult Function(HomeEventData value)? data,
    TResult Function(HomeEventUpdateQuestion value)? updateQuestion,
    TResult Function(HomeEventUpdateLicense value)? updateLicense,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeEventLoading implements HomeEvent {
  const factory HomeEventLoading() = _$HomeEventLoadingImpl;
}

/// @nodoc
abstract class _$$HomeEventFailureImplCopyWith<$Res> {
  factory _$$HomeEventFailureImplCopyWith(_$HomeEventFailureImpl value,
          $Res Function(_$HomeEventFailureImpl) then) =
      __$$HomeEventFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception error});
}

/// @nodoc
class __$$HomeEventFailureImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeEventFailureImpl>
    implements _$$HomeEventFailureImplCopyWith<$Res> {
  __$$HomeEventFailureImplCopyWithImpl(_$HomeEventFailureImpl _value,
      $Res Function(_$HomeEventFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$HomeEventFailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$HomeEventFailureImpl implements HomeEventFailure {
  const _$HomeEventFailureImpl(this.error);

  @override
  final Exception error;

  @override
  String toString() {
    return 'HomeEvent.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEventFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeEventFailureImplCopyWith<_$HomeEventFailureImpl> get copyWith =>
      __$$HomeEventFailureImplCopyWithImpl<_$HomeEventFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() insertData,
    required TResult Function() loading,
    required TResult Function(Exception error) failure,
    required TResult Function(
            String licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)
        data,
    required TResult Function(Question question) updateQuestion,
    required TResult Function(String licenseName) updateLicense,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? insertData,
    TResult? Function()? loading,
    TResult? Function(Exception error)? failure,
    TResult? Function(
            String licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)?
        data,
    TResult? Function(Question question)? updateQuestion,
    TResult? Function(String licenseName)? updateLicense,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? insertData,
    TResult Function()? loading,
    TResult Function(Exception error)? failure,
    TResult Function(
            String licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)?
        data,
    TResult Function(Question question)? updateQuestion,
    TResult Function(String licenseName)? updateLicense,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventInsertData value) insertData,
    required TResult Function(HomeEventLoading value) loading,
    required TResult Function(HomeEventFailure value) failure,
    required TResult Function(HomeEventData value) data,
    required TResult Function(HomeEventUpdateQuestion value) updateQuestion,
    required TResult Function(HomeEventUpdateLicense value) updateLicense,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventInsertData value)? insertData,
    TResult? Function(HomeEventLoading value)? loading,
    TResult? Function(HomeEventFailure value)? failure,
    TResult? Function(HomeEventData value)? data,
    TResult? Function(HomeEventUpdateQuestion value)? updateQuestion,
    TResult? Function(HomeEventUpdateLicense value)? updateLicense,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventInsertData value)? insertData,
    TResult Function(HomeEventLoading value)? loading,
    TResult Function(HomeEventFailure value)? failure,
    TResult Function(HomeEventData value)? data,
    TResult Function(HomeEventUpdateQuestion value)? updateQuestion,
    TResult Function(HomeEventUpdateLicense value)? updateLicense,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class HomeEventFailure implements HomeEvent {
  const factory HomeEventFailure(final Exception error) =
      _$HomeEventFailureImpl;

  Exception get error;
  @JsonKey(ignore: true)
  _$$HomeEventFailureImplCopyWith<_$HomeEventFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeEventDataImplCopyWith<$Res> {
  factory _$$HomeEventDataImplCopyWith(
          _$HomeEventDataImpl value, $Res Function(_$HomeEventDataImpl) then) =
      __$$HomeEventDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String licenseName,
      List<Question> questions,
      List<QuestionType> questionTypes,
      List<License> licenses,
      List<Test> tests,
      List<TestQuest> testQuests});
}

/// @nodoc
class __$$HomeEventDataImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeEventDataImpl>
    implements _$$HomeEventDataImplCopyWith<$Res> {
  __$$HomeEventDataImplCopyWithImpl(
      _$HomeEventDataImpl _value, $Res Function(_$HomeEventDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? licenseName = null,
    Object? questions = null,
    Object? questionTypes = null,
    Object? licenses = null,
    Object? tests = null,
    Object? testQuests = null,
  }) {
    return _then(_$HomeEventDataImpl(
      licenseName: null == licenseName
          ? _value.licenseName
          : licenseName // ignore: cast_nullable_to_non_nullable
              as String,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      questionTypes: null == questionTypes
          ? _value._questionTypes
          : questionTypes // ignore: cast_nullable_to_non_nullable
              as List<QuestionType>,
      licenses: null == licenses
          ? _value._licenses
          : licenses // ignore: cast_nullable_to_non_nullable
              as List<License>,
      tests: null == tests
          ? _value._tests
          : tests // ignore: cast_nullable_to_non_nullable
              as List<Test>,
      testQuests: null == testQuests
          ? _value._testQuests
          : testQuests // ignore: cast_nullable_to_non_nullable
              as List<TestQuest>,
    ));
  }
}

/// @nodoc

class _$HomeEventDataImpl implements HomeEventData {
  const _$HomeEventDataImpl(
      {required this.licenseName,
      final List<Question> questions = const [],
      final List<QuestionType> questionTypes = const [],
      final List<License> licenses = const [],
      final List<Test> tests = const [],
      final List<TestQuest> testQuests = const []})
      : _questions = questions,
        _questionTypes = questionTypes,
        _licenses = licenses,
        _tests = tests,
        _testQuests = testQuests;

  @override
  final String licenseName;
  final List<Question> _questions;
  @override
  @JsonKey()
  List<Question> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  final List<QuestionType> _questionTypes;
  @override
  @JsonKey()
  List<QuestionType> get questionTypes {
    if (_questionTypes is EqualUnmodifiableListView) return _questionTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionTypes);
  }

  final List<License> _licenses;
  @override
  @JsonKey()
  List<License> get licenses {
    if (_licenses is EqualUnmodifiableListView) return _licenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_licenses);
  }

  final List<Test> _tests;
  @override
  @JsonKey()
  List<Test> get tests {
    if (_tests is EqualUnmodifiableListView) return _tests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tests);
  }

  final List<TestQuest> _testQuests;
  @override
  @JsonKey()
  List<TestQuest> get testQuests {
    if (_testQuests is EqualUnmodifiableListView) return _testQuests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_testQuests);
  }

  @override
  String toString() {
    return 'HomeEvent.data(licenseName: $licenseName, questions: $questions, questionTypes: $questionTypes, licenses: $licenses, tests: $tests, testQuests: $testQuests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEventDataImpl &&
            (identical(other.licenseName, licenseName) ||
                other.licenseName == licenseName) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            const DeepCollectionEquality()
                .equals(other._questionTypes, _questionTypes) &&
            const DeepCollectionEquality().equals(other._licenses, _licenses) &&
            const DeepCollectionEquality().equals(other._tests, _tests) &&
            const DeepCollectionEquality()
                .equals(other._testQuests, _testQuests));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      licenseName,
      const DeepCollectionEquality().hash(_questions),
      const DeepCollectionEquality().hash(_questionTypes),
      const DeepCollectionEquality().hash(_licenses),
      const DeepCollectionEquality().hash(_tests),
      const DeepCollectionEquality().hash(_testQuests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeEventDataImplCopyWith<_$HomeEventDataImpl> get copyWith =>
      __$$HomeEventDataImplCopyWithImpl<_$HomeEventDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() insertData,
    required TResult Function() loading,
    required TResult Function(Exception error) failure,
    required TResult Function(
            String licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)
        data,
    required TResult Function(Question question) updateQuestion,
    required TResult Function(String licenseName) updateLicense,
  }) {
    return data(
        licenseName, questions, questionTypes, licenses, tests, testQuests);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? insertData,
    TResult? Function()? loading,
    TResult? Function(Exception error)? failure,
    TResult? Function(
            String licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)?
        data,
    TResult? Function(Question question)? updateQuestion,
    TResult? Function(String licenseName)? updateLicense,
  }) {
    return data?.call(
        licenseName, questions, questionTypes, licenses, tests, testQuests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? insertData,
    TResult Function()? loading,
    TResult Function(Exception error)? failure,
    TResult Function(
            String licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)?
        data,
    TResult Function(Question question)? updateQuestion,
    TResult Function(String licenseName)? updateLicense,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(
          licenseName, questions, questionTypes, licenses, tests, testQuests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventInsertData value) insertData,
    required TResult Function(HomeEventLoading value) loading,
    required TResult Function(HomeEventFailure value) failure,
    required TResult Function(HomeEventData value) data,
    required TResult Function(HomeEventUpdateQuestion value) updateQuestion,
    required TResult Function(HomeEventUpdateLicense value) updateLicense,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventInsertData value)? insertData,
    TResult? Function(HomeEventLoading value)? loading,
    TResult? Function(HomeEventFailure value)? failure,
    TResult? Function(HomeEventData value)? data,
    TResult? Function(HomeEventUpdateQuestion value)? updateQuestion,
    TResult? Function(HomeEventUpdateLicense value)? updateLicense,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventInsertData value)? insertData,
    TResult Function(HomeEventLoading value)? loading,
    TResult Function(HomeEventFailure value)? failure,
    TResult Function(HomeEventData value)? data,
    TResult Function(HomeEventUpdateQuestion value)? updateQuestion,
    TResult Function(HomeEventUpdateLicense value)? updateLicense,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class HomeEventData implements HomeEvent {
  const factory HomeEventData(
      {required final String licenseName,
      final List<Question> questions,
      final List<QuestionType> questionTypes,
      final List<License> licenses,
      final List<Test> tests,
      final List<TestQuest> testQuests}) = _$HomeEventDataImpl;

  String get licenseName;
  List<Question> get questions;
  List<QuestionType> get questionTypes;
  List<License> get licenses;
  List<Test> get tests;
  List<TestQuest> get testQuests;
  @JsonKey(ignore: true)
  _$$HomeEventDataImplCopyWith<_$HomeEventDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeEventUpdateQuestionImplCopyWith<$Res> {
  factory _$$HomeEventUpdateQuestionImplCopyWith(
          _$HomeEventUpdateQuestionImpl value,
          $Res Function(_$HomeEventUpdateQuestionImpl) then) =
      __$$HomeEventUpdateQuestionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Question question});

  $QuestionCopyWith<$Res> get question;
}

/// @nodoc
class __$$HomeEventUpdateQuestionImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeEventUpdateQuestionImpl>
    implements _$$HomeEventUpdateQuestionImplCopyWith<$Res> {
  __$$HomeEventUpdateQuestionImplCopyWithImpl(
      _$HomeEventUpdateQuestionImpl _value,
      $Res Function(_$HomeEventUpdateQuestionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
  }) {
    return _then(_$HomeEventUpdateQuestionImpl(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as Question,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $QuestionCopyWith<$Res> get question {
    return $QuestionCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value));
    });
  }
}

/// @nodoc

class _$HomeEventUpdateQuestionImpl implements HomeEventUpdateQuestion {
  const _$HomeEventUpdateQuestionImpl({required this.question});

  @override
  final Question question;

  @override
  String toString() {
    return 'HomeEvent.updateQuestion(question: $question)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEventUpdateQuestionImpl &&
            (identical(other.question, question) ||
                other.question == question));
  }

  @override
  int get hashCode => Object.hash(runtimeType, question);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeEventUpdateQuestionImplCopyWith<_$HomeEventUpdateQuestionImpl>
      get copyWith => __$$HomeEventUpdateQuestionImplCopyWithImpl<
          _$HomeEventUpdateQuestionImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() insertData,
    required TResult Function() loading,
    required TResult Function(Exception error) failure,
    required TResult Function(
            String licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)
        data,
    required TResult Function(Question question) updateQuestion,
    required TResult Function(String licenseName) updateLicense,
  }) {
    return updateQuestion(question);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? insertData,
    TResult? Function()? loading,
    TResult? Function(Exception error)? failure,
    TResult? Function(
            String licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)?
        data,
    TResult? Function(Question question)? updateQuestion,
    TResult? Function(String licenseName)? updateLicense,
  }) {
    return updateQuestion?.call(question);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? insertData,
    TResult Function()? loading,
    TResult Function(Exception error)? failure,
    TResult Function(
            String licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)?
        data,
    TResult Function(Question question)? updateQuestion,
    TResult Function(String licenseName)? updateLicense,
    required TResult orElse(),
  }) {
    if (updateQuestion != null) {
      return updateQuestion(question);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventInsertData value) insertData,
    required TResult Function(HomeEventLoading value) loading,
    required TResult Function(HomeEventFailure value) failure,
    required TResult Function(HomeEventData value) data,
    required TResult Function(HomeEventUpdateQuestion value) updateQuestion,
    required TResult Function(HomeEventUpdateLicense value) updateLicense,
  }) {
    return updateQuestion(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventInsertData value)? insertData,
    TResult? Function(HomeEventLoading value)? loading,
    TResult? Function(HomeEventFailure value)? failure,
    TResult? Function(HomeEventData value)? data,
    TResult? Function(HomeEventUpdateQuestion value)? updateQuestion,
    TResult? Function(HomeEventUpdateLicense value)? updateLicense,
  }) {
    return updateQuestion?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventInsertData value)? insertData,
    TResult Function(HomeEventLoading value)? loading,
    TResult Function(HomeEventFailure value)? failure,
    TResult Function(HomeEventData value)? data,
    TResult Function(HomeEventUpdateQuestion value)? updateQuestion,
    TResult Function(HomeEventUpdateLicense value)? updateLicense,
    required TResult orElse(),
  }) {
    if (updateQuestion != null) {
      return updateQuestion(this);
    }
    return orElse();
  }
}

abstract class HomeEventUpdateQuestion implements HomeEvent {
  const factory HomeEventUpdateQuestion({required final Question question}) =
      _$HomeEventUpdateQuestionImpl;

  Question get question;
  @JsonKey(ignore: true)
  _$$HomeEventUpdateQuestionImplCopyWith<_$HomeEventUpdateQuestionImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeEventUpdateLicenseImplCopyWith<$Res> {
  factory _$$HomeEventUpdateLicenseImplCopyWith(
          _$HomeEventUpdateLicenseImpl value,
          $Res Function(_$HomeEventUpdateLicenseImpl) then) =
      __$$HomeEventUpdateLicenseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String licenseName});
}

/// @nodoc
class __$$HomeEventUpdateLicenseImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeEventUpdateLicenseImpl>
    implements _$$HomeEventUpdateLicenseImplCopyWith<$Res> {
  __$$HomeEventUpdateLicenseImplCopyWithImpl(
      _$HomeEventUpdateLicenseImpl _value,
      $Res Function(_$HomeEventUpdateLicenseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? licenseName = null,
  }) {
    return _then(_$HomeEventUpdateLicenseImpl(
      licenseName: null == licenseName
          ? _value.licenseName
          : licenseName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$HomeEventUpdateLicenseImpl implements HomeEventUpdateLicense {
  const _$HomeEventUpdateLicenseImpl({required this.licenseName});

  @override
  final String licenseName;

  @override
  String toString() {
    return 'HomeEvent.updateLicense(licenseName: $licenseName)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEventUpdateLicenseImpl &&
            (identical(other.licenseName, licenseName) ||
                other.licenseName == licenseName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, licenseName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeEventUpdateLicenseImplCopyWith<_$HomeEventUpdateLicenseImpl>
      get copyWith => __$$HomeEventUpdateLicenseImplCopyWithImpl<
          _$HomeEventUpdateLicenseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() insertData,
    required TResult Function() loading,
    required TResult Function(Exception error) failure,
    required TResult Function(
            String licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)
        data,
    required TResult Function(Question question) updateQuestion,
    required TResult Function(String licenseName) updateLicense,
  }) {
    return updateLicense(licenseName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? insertData,
    TResult? Function()? loading,
    TResult? Function(Exception error)? failure,
    TResult? Function(
            String licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)?
        data,
    TResult? Function(Question question)? updateQuestion,
    TResult? Function(String licenseName)? updateLicense,
  }) {
    return updateLicense?.call(licenseName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? insertData,
    TResult Function()? loading,
    TResult Function(Exception error)? failure,
    TResult Function(
            String licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)?
        data,
    TResult Function(Question question)? updateQuestion,
    TResult Function(String licenseName)? updateLicense,
    required TResult orElse(),
  }) {
    if (updateLicense != null) {
      return updateLicense(licenseName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventInsertData value) insertData,
    required TResult Function(HomeEventLoading value) loading,
    required TResult Function(HomeEventFailure value) failure,
    required TResult Function(HomeEventData value) data,
    required TResult Function(HomeEventUpdateQuestion value) updateQuestion,
    required TResult Function(HomeEventUpdateLicense value) updateLicense,
  }) {
    return updateLicense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventInsertData value)? insertData,
    TResult? Function(HomeEventLoading value)? loading,
    TResult? Function(HomeEventFailure value)? failure,
    TResult? Function(HomeEventData value)? data,
    TResult? Function(HomeEventUpdateQuestion value)? updateQuestion,
    TResult? Function(HomeEventUpdateLicense value)? updateLicense,
  }) {
    return updateLicense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventInsertData value)? insertData,
    TResult Function(HomeEventLoading value)? loading,
    TResult Function(HomeEventFailure value)? failure,
    TResult Function(HomeEventData value)? data,
    TResult Function(HomeEventUpdateQuestion value)? updateQuestion,
    TResult Function(HomeEventUpdateLicense value)? updateLicense,
    required TResult orElse(),
  }) {
    if (updateLicense != null) {
      return updateLicense(this);
    }
    return orElse();
  }
}

abstract class HomeEventUpdateLicense implements HomeEvent {
  const factory HomeEventUpdateLicense({required final String licenseName}) =
      _$HomeEventUpdateLicenseImpl;

  String get licenseName;
  @JsonKey(ignore: true)
  _$$HomeEventUpdateLicenseImplCopyWith<_$HomeEventUpdateLicenseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Exception error) failure,
    required TResult Function(
            String? licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Exception error)? failure,
    TResult? Function(
            String? licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)?
        data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Exception error)? failure,
    TResult Function(
            String? licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)?
        data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInItal value) initial,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateFailure value) failure,
    required TResult Function(HomeStateData value) data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInItal value)? initial,
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStateFailure value)? failure,
    TResult? Function(HomeStateData value)? data,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInItal value)? initial,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateFailure value)? failure,
    TResult Function(HomeStateData value)? data,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$HomeStateInItalImplCopyWith<$Res> {
  factory _$$HomeStateInItalImplCopyWith(_$HomeStateInItalImpl value,
          $Res Function(_$HomeStateInItalImpl) then) =
      __$$HomeStateInItalImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeStateInItalImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateInItalImpl>
    implements _$$HomeStateInItalImplCopyWith<$Res> {
  __$$HomeStateInItalImplCopyWithImpl(
      _$HomeStateInItalImpl _value, $Res Function(_$HomeStateInItalImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeStateInItalImpl implements HomeStateInItal {
  const _$HomeStateInItalImpl();

  @override
  String toString() {
    return 'HomeState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeStateInItalImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Exception error) failure,
    required TResult Function(
            String? licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)
        data,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Exception error)? failure,
    TResult? Function(
            String? licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)?
        data,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Exception error)? failure,
    TResult Function(
            String? licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)?
        data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInItal value) initial,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateFailure value) failure,
    required TResult Function(HomeStateData value) data,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInItal value)? initial,
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStateFailure value)? failure,
    TResult? Function(HomeStateData value)? data,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInItal value)? initial,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateFailure value)? failure,
    TResult Function(HomeStateData value)? data,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class HomeStateInItal implements HomeState {
  const factory HomeStateInItal() = _$HomeStateInItalImpl;
}

/// @nodoc
abstract class _$$HomeStateLoadingImplCopyWith<$Res> {
  factory _$$HomeStateLoadingImplCopyWith(_$HomeStateLoadingImpl value,
          $Res Function(_$HomeStateLoadingImpl) then) =
      __$$HomeStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeStateLoadingImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateLoadingImpl>
    implements _$$HomeStateLoadingImplCopyWith<$Res> {
  __$$HomeStateLoadingImplCopyWithImpl(_$HomeStateLoadingImpl _value,
      $Res Function(_$HomeStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeStateLoadingImpl implements HomeStateLoading {
  const _$HomeStateLoadingImpl();

  @override
  String toString() {
    return 'HomeState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$HomeStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Exception error) failure,
    required TResult Function(
            String? licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)
        data,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Exception error)? failure,
    TResult? Function(
            String? licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)?
        data,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Exception error)? failure,
    TResult Function(
            String? licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)?
        data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInItal value) initial,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateFailure value) failure,
    required TResult Function(HomeStateData value) data,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInItal value)? initial,
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStateFailure value)? failure,
    TResult? Function(HomeStateData value)? data,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInItal value)? initial,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateFailure value)? failure,
    TResult Function(HomeStateData value)? data,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class HomeStateLoading implements HomeState {
  const factory HomeStateLoading() = _$HomeStateLoadingImpl;
}

/// @nodoc
abstract class _$$HomeStateFailureImplCopyWith<$Res> {
  factory _$$HomeStateFailureImplCopyWith(_$HomeStateFailureImpl value,
          $Res Function(_$HomeStateFailureImpl) then) =
      __$$HomeStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception error});
}

/// @nodoc
class __$$HomeStateFailureImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateFailureImpl>
    implements _$$HomeStateFailureImplCopyWith<$Res> {
  __$$HomeStateFailureImplCopyWithImpl(_$HomeStateFailureImpl _value,
      $Res Function(_$HomeStateFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$HomeStateFailureImpl(
      null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$HomeStateFailureImpl implements HomeStateFailure {
  const _$HomeStateFailureImpl(this.error);

  @override
  final Exception error;

  @override
  String toString() {
    return 'HomeState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateFailureImplCopyWith<_$HomeStateFailureImpl> get copyWith =>
      __$$HomeStateFailureImplCopyWithImpl<_$HomeStateFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Exception error) failure,
    required TResult Function(
            String? licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)
        data,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Exception error)? failure,
    TResult? Function(
            String? licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)?
        data,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Exception error)? failure,
    TResult Function(
            String? licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)?
        data,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(error);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInItal value) initial,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateFailure value) failure,
    required TResult Function(HomeStateData value) data,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInItal value)? initial,
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStateFailure value)? failure,
    TResult? Function(HomeStateData value)? data,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInItal value)? initial,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateFailure value)? failure,
    TResult Function(HomeStateData value)? data,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class HomeStateFailure implements HomeState {
  const factory HomeStateFailure(final Exception error) =
      _$HomeStateFailureImpl;

  Exception get error;
  @JsonKey(ignore: true)
  _$$HomeStateFailureImplCopyWith<_$HomeStateFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$HomeStateDataImplCopyWith<$Res> {
  factory _$$HomeStateDataImplCopyWith(
          _$HomeStateDataImpl value, $Res Function(_$HomeStateDataImpl) then) =
      __$$HomeStateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {String? licenseName,
      List<Question> questions,
      List<QuestionType> questionTypes,
      List<License> licenses,
      List<Test> tests,
      List<TestQuest> testQuests});
}

/// @nodoc
class __$$HomeStateDataImplCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$HomeStateDataImpl>
    implements _$$HomeStateDataImplCopyWith<$Res> {
  __$$HomeStateDataImplCopyWithImpl(
      _$HomeStateDataImpl _value, $Res Function(_$HomeStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? licenseName = freezed,
    Object? questions = null,
    Object? questionTypes = null,
    Object? licenses = null,
    Object? tests = null,
    Object? testQuests = null,
  }) {
    return _then(_$HomeStateDataImpl(
      licenseName: freezed == licenseName
          ? _value.licenseName
          : licenseName // ignore: cast_nullable_to_non_nullable
              as String?,
      questions: null == questions
          ? _value._questions
          : questions // ignore: cast_nullable_to_non_nullable
              as List<Question>,
      questionTypes: null == questionTypes
          ? _value._questionTypes
          : questionTypes // ignore: cast_nullable_to_non_nullable
              as List<QuestionType>,
      licenses: null == licenses
          ? _value._licenses
          : licenses // ignore: cast_nullable_to_non_nullable
              as List<License>,
      tests: null == tests
          ? _value._tests
          : tests // ignore: cast_nullable_to_non_nullable
              as List<Test>,
      testQuests: null == testQuests
          ? _value._testQuests
          : testQuests // ignore: cast_nullable_to_non_nullable
              as List<TestQuest>,
    ));
  }
}

/// @nodoc

class _$HomeStateDataImpl implements HomeStateData {
  const _$HomeStateDataImpl(
      {this.licenseName,
      final List<Question> questions = const [],
      final List<QuestionType> questionTypes = const [],
      final List<License> licenses = const [],
      final List<Test> tests = const [],
      final List<TestQuest> testQuests = const []})
      : _questions = questions,
        _questionTypes = questionTypes,
        _licenses = licenses,
        _tests = tests,
        _testQuests = testQuests;

  @override
  final String? licenseName;
  final List<Question> _questions;
  @override
  @JsonKey()
  List<Question> get questions {
    if (_questions is EqualUnmodifiableListView) return _questions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questions);
  }

  final List<QuestionType> _questionTypes;
  @override
  @JsonKey()
  List<QuestionType> get questionTypes {
    if (_questionTypes is EqualUnmodifiableListView) return _questionTypes;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionTypes);
  }

  final List<License> _licenses;
  @override
  @JsonKey()
  List<License> get licenses {
    if (_licenses is EqualUnmodifiableListView) return _licenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_licenses);
  }

  final List<Test> _tests;
  @override
  @JsonKey()
  List<Test> get tests {
    if (_tests is EqualUnmodifiableListView) return _tests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_tests);
  }

  final List<TestQuest> _testQuests;
  @override
  @JsonKey()
  List<TestQuest> get testQuests {
    if (_testQuests is EqualUnmodifiableListView) return _testQuests;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_testQuests);
  }

  @override
  String toString() {
    return 'HomeState.data(licenseName: $licenseName, questions: $questions, questionTypes: $questionTypes, licenses: $licenses, tests: $tests, testQuests: $testQuests)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateDataImpl &&
            (identical(other.licenseName, licenseName) ||
                other.licenseName == licenseName) &&
            const DeepCollectionEquality()
                .equals(other._questions, _questions) &&
            const DeepCollectionEquality()
                .equals(other._questionTypes, _questionTypes) &&
            const DeepCollectionEquality().equals(other._licenses, _licenses) &&
            const DeepCollectionEquality().equals(other._tests, _tests) &&
            const DeepCollectionEquality()
                .equals(other._testQuests, _testQuests));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      licenseName,
      const DeepCollectionEquality().hash(_questions),
      const DeepCollectionEquality().hash(_questionTypes),
      const DeepCollectionEquality().hash(_licenses),
      const DeepCollectionEquality().hash(_tests),
      const DeepCollectionEquality().hash(_testQuests));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$HomeStateDataImplCopyWith<_$HomeStateDataImpl> get copyWith =>
      __$$HomeStateDataImplCopyWithImpl<_$HomeStateDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(Exception error) failure,
    required TResult Function(
            String? licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)
        data,
  }) {
    return data(
        licenseName, questions, questionTypes, licenses, tests, testQuests);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(Exception error)? failure,
    TResult? Function(
            String? licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)?
        data,
  }) {
    return data?.call(
        licenseName, questions, questionTypes, licenses, tests, testQuests);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(Exception error)? failure,
    TResult Function(
            String? licenseName,
            List<Question> questions,
            List<QuestionType> questionTypes,
            List<License> licenses,
            List<Test> tests,
            List<TestQuest> testQuests)?
        data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(
          licenseName, questions, questionTypes, licenses, tests, testQuests);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInItal value) initial,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateFailure value) failure,
    required TResult Function(HomeStateData value) data,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInItal value)? initial,
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStateFailure value)? failure,
    TResult? Function(HomeStateData value)? data,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInItal value)? initial,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateFailure value)? failure,
    TResult Function(HomeStateData value)? data,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class HomeStateData implements HomeState {
  const factory HomeStateData(
      {final String? licenseName,
      final List<Question> questions,
      final List<QuestionType> questionTypes,
      final List<License> licenses,
      final List<Test> tests,
      final List<TestQuest> testQuests}) = _$HomeStateDataImpl;

  String? get licenseName;
  List<Question> get questions;
  List<QuestionType> get questionTypes;
  List<License> get licenses;
  List<Test> get tests;
  List<TestQuest> get testQuests;
  @JsonKey(ignore: true)
  _$$HomeStateDataImplCopyWith<_$HomeStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
