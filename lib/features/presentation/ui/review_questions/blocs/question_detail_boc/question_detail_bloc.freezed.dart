// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'question_detail_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuestionDetailEvent {
  ZQuestion get question => throw _privateConstructorUsedError;
  bool get isCorrectAnswer => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ZQuestion question, bool isCorrectAnswer)
        toggleAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ZQuestion question, bool isCorrectAnswer)? toggleAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ZQuestion question, bool isCorrectAnswer)? toggleAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionDetailEventToggleAnswer value)
        toggleAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionDetailEventToggleAnswer value)? toggleAnswer,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionDetailEventToggleAnswer value)? toggleAnswer,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionDetailEventCopyWith<QuestionDetailEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionDetailEventCopyWith<$Res> {
  factory $QuestionDetailEventCopyWith(
          QuestionDetailEvent value, $Res Function(QuestionDetailEvent) then) =
      _$QuestionDetailEventCopyWithImpl<$Res, QuestionDetailEvent>;
  @useResult
  $Res call({ZQuestion question, bool isCorrectAnswer});

  $ZQuestionCopyWith<$Res> get question;
}

/// @nodoc
class _$QuestionDetailEventCopyWithImpl<$Res, $Val extends QuestionDetailEvent>
    implements $QuestionDetailEventCopyWith<$Res> {
  _$QuestionDetailEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? isCorrectAnswer = null,
  }) {
    return _then(_value.copyWith(
      question: null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as ZQuestion,
      isCorrectAnswer: null == isCorrectAnswer
          ? _value.isCorrectAnswer
          : isCorrectAnswer // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ZQuestionCopyWith<$Res> get question {
    return $ZQuestionCopyWith<$Res>(_value.question, (value) {
      return _then(_value.copyWith(question: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$QuestionDetailEventToggleAnswerImplCopyWith<$Res>
    implements $QuestionDetailEventCopyWith<$Res> {
  factory _$$QuestionDetailEventToggleAnswerImplCopyWith(
          _$QuestionDetailEventToggleAnswerImpl value,
          $Res Function(_$QuestionDetailEventToggleAnswerImpl) then) =
      __$$QuestionDetailEventToggleAnswerImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ZQuestion question, bool isCorrectAnswer});

  @override
  $ZQuestionCopyWith<$Res> get question;
}

/// @nodoc
class __$$QuestionDetailEventToggleAnswerImplCopyWithImpl<$Res>
    extends _$QuestionDetailEventCopyWithImpl<$Res,
        _$QuestionDetailEventToggleAnswerImpl>
    implements _$$QuestionDetailEventToggleAnswerImplCopyWith<$Res> {
  __$$QuestionDetailEventToggleAnswerImplCopyWithImpl(
      _$QuestionDetailEventToggleAnswerImpl _value,
      $Res Function(_$QuestionDetailEventToggleAnswerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? question = null,
    Object? isCorrectAnswer = null,
  }) {
    return _then(_$QuestionDetailEventToggleAnswerImpl(
      null == question
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as ZQuestion,
      null == isCorrectAnswer
          ? _value.isCorrectAnswer
          : isCorrectAnswer // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$QuestionDetailEventToggleAnswerImpl
    implements QuestionDetailEventToggleAnswer {
  const _$QuestionDetailEventToggleAnswerImpl(
      this.question, this.isCorrectAnswer);

  @override
  final ZQuestion question;
  @override
  final bool isCorrectAnswer;

  @override
  String toString() {
    return 'QuestionDetailEvent.toggleAnswer(question: $question, isCorrectAnswer: $isCorrectAnswer)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionDetailEventToggleAnswerImpl &&
            (identical(other.question, question) ||
                other.question == question) &&
            (identical(other.isCorrectAnswer, isCorrectAnswer) ||
                other.isCorrectAnswer == isCorrectAnswer));
  }

  @override
  int get hashCode => Object.hash(runtimeType, question, isCorrectAnswer);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionDetailEventToggleAnswerImplCopyWith<
          _$QuestionDetailEventToggleAnswerImpl>
      get copyWith => __$$QuestionDetailEventToggleAnswerImplCopyWithImpl<
          _$QuestionDetailEventToggleAnswerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ZQuestion question, bool isCorrectAnswer)
        toggleAnswer,
  }) {
    return toggleAnswer(question, isCorrectAnswer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ZQuestion question, bool isCorrectAnswer)? toggleAnswer,
  }) {
    return toggleAnswer?.call(question, isCorrectAnswer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ZQuestion question, bool isCorrectAnswer)? toggleAnswer,
    required TResult orElse(),
  }) {
    if (toggleAnswer != null) {
      return toggleAnswer(question, isCorrectAnswer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionDetailEventToggleAnswer value)
        toggleAnswer,
  }) {
    return toggleAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionDetailEventToggleAnswer value)? toggleAnswer,
  }) {
    return toggleAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionDetailEventToggleAnswer value)? toggleAnswer,
    required TResult orElse(),
  }) {
    if (toggleAnswer != null) {
      return toggleAnswer(this);
    }
    return orElse();
  }
}

abstract class QuestionDetailEventToggleAnswer implements QuestionDetailEvent {
  const factory QuestionDetailEventToggleAnswer(
          final ZQuestion question, final bool isCorrectAnswer) =
      _$QuestionDetailEventToggleAnswerImpl;

  @override
  ZQuestion get question;
  @override
  bool get isCorrectAnswer;
  @override
  @JsonKey(ignore: true)
  _$$QuestionDetailEventToggleAnswerImplCopyWith<
          _$QuestionDetailEventToggleAnswerImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuestionDetailState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isAnswerVisible) answerVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isAnswerVisible)? answerVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isAnswerVisible)? answerVisibility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionDetailStateInitial value) initial,
    required TResult Function(QuestionDetailStateAnswerVisibility value)
        answerVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionDetailStateInitial value)? initial,
    TResult? Function(QuestionDetailStateAnswerVisibility value)?
        answerVisibility,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionDetailStateInitial value)? initial,
    TResult Function(QuestionDetailStateAnswerVisibility value)?
        answerVisibility,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionDetailStateCopyWith<$Res> {
  factory $QuestionDetailStateCopyWith(
          QuestionDetailState value, $Res Function(QuestionDetailState) then) =
      _$QuestionDetailStateCopyWithImpl<$Res, QuestionDetailState>;
}

/// @nodoc
class _$QuestionDetailStateCopyWithImpl<$Res, $Val extends QuestionDetailState>
    implements $QuestionDetailStateCopyWith<$Res> {
  _$QuestionDetailStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$QuestionDetailStateInitialImplCopyWith<$Res> {
  factory _$$QuestionDetailStateInitialImplCopyWith(
          _$QuestionDetailStateInitialImpl value,
          $Res Function(_$QuestionDetailStateInitialImpl) then) =
      __$$QuestionDetailStateInitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuestionDetailStateInitialImplCopyWithImpl<$Res>
    extends _$QuestionDetailStateCopyWithImpl<$Res,
        _$QuestionDetailStateInitialImpl>
    implements _$$QuestionDetailStateInitialImplCopyWith<$Res> {
  __$$QuestionDetailStateInitialImplCopyWithImpl(
      _$QuestionDetailStateInitialImpl _value,
      $Res Function(_$QuestionDetailStateInitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuestionDetailStateInitialImpl implements QuestionDetailStateInitial {
  const _$QuestionDetailStateInitialImpl();

  @override
  String toString() {
    return 'QuestionDetailState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionDetailStateInitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isAnswerVisible) answerVisibility,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isAnswerVisible)? answerVisibility,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isAnswerVisible)? answerVisibility,
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
    required TResult Function(QuestionDetailStateInitial value) initial,
    required TResult Function(QuestionDetailStateAnswerVisibility value)
        answerVisibility,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionDetailStateInitial value)? initial,
    TResult? Function(QuestionDetailStateAnswerVisibility value)?
        answerVisibility,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionDetailStateInitial value)? initial,
    TResult Function(QuestionDetailStateAnswerVisibility value)?
        answerVisibility,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class QuestionDetailStateInitial implements QuestionDetailState {
  const factory QuestionDetailStateInitial() = _$QuestionDetailStateInitialImpl;
}

/// @nodoc
abstract class _$$QuestionDetailStateAnswerVisibilityImplCopyWith<$Res> {
  factory _$$QuestionDetailStateAnswerVisibilityImplCopyWith(
          _$QuestionDetailStateAnswerVisibilityImpl value,
          $Res Function(_$QuestionDetailStateAnswerVisibilityImpl) then) =
      __$$QuestionDetailStateAnswerVisibilityImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isAnswerVisible});
}

/// @nodoc
class __$$QuestionDetailStateAnswerVisibilityImplCopyWithImpl<$Res>
    extends _$QuestionDetailStateCopyWithImpl<$Res,
        _$QuestionDetailStateAnswerVisibilityImpl>
    implements _$$QuestionDetailStateAnswerVisibilityImplCopyWith<$Res> {
  __$$QuestionDetailStateAnswerVisibilityImplCopyWithImpl(
      _$QuestionDetailStateAnswerVisibilityImpl _value,
      $Res Function(_$QuestionDetailStateAnswerVisibilityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isAnswerVisible = null,
  }) {
    return _then(_$QuestionDetailStateAnswerVisibilityImpl(
      isAnswerVisible: null == isAnswerVisible
          ? _value.isAnswerVisible
          : isAnswerVisible // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$QuestionDetailStateAnswerVisibilityImpl
    implements QuestionDetailStateAnswerVisibility {
  const _$QuestionDetailStateAnswerVisibilityImpl(
      {this.isAnswerVisible = false});

  @override
  @JsonKey()
  final bool isAnswerVisible;

  @override
  String toString() {
    return 'QuestionDetailState.answerVisibility(isAnswerVisible: $isAnswerVisible)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionDetailStateAnswerVisibilityImpl &&
            (identical(other.isAnswerVisible, isAnswerVisible) ||
                other.isAnswerVisible == isAnswerVisible));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isAnswerVisible);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionDetailStateAnswerVisibilityImplCopyWith<
          _$QuestionDetailStateAnswerVisibilityImpl>
      get copyWith => __$$QuestionDetailStateAnswerVisibilityImplCopyWithImpl<
          _$QuestionDetailStateAnswerVisibilityImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(bool isAnswerVisible) answerVisibility,
  }) {
    return answerVisibility(isAnswerVisible);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(bool isAnswerVisible)? answerVisibility,
  }) {
    return answerVisibility?.call(isAnswerVisible);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(bool isAnswerVisible)? answerVisibility,
    required TResult orElse(),
  }) {
    if (answerVisibility != null) {
      return answerVisibility(isAnswerVisible);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionDetailStateInitial value) initial,
    required TResult Function(QuestionDetailStateAnswerVisibility value)
        answerVisibility,
  }) {
    return answerVisibility(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionDetailStateInitial value)? initial,
    TResult? Function(QuestionDetailStateAnswerVisibility value)?
        answerVisibility,
  }) {
    return answerVisibility?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionDetailStateInitial value)? initial,
    TResult Function(QuestionDetailStateAnswerVisibility value)?
        answerVisibility,
    required TResult orElse(),
  }) {
    if (answerVisibility != null) {
      return answerVisibility(this);
    }
    return orElse();
  }
}

abstract class QuestionDetailStateAnswerVisibility
    implements QuestionDetailState {
  const factory QuestionDetailStateAnswerVisibility(
      {final bool isAnswerVisible}) = _$QuestionDetailStateAnswerVisibilityImpl;

  bool get isAnswerVisible;
  @JsonKey(ignore: true)
  _$$QuestionDetailStateAnswerVisibilityImplCopyWith<
          _$QuestionDetailStateAnswerVisibilityImpl>
      get copyWith => throw _privateConstructorUsedError;
}
