// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_questions_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReviewQuestionsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllQuestions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllQuestions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllQuestions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReviewQuestionsEventGetZLicense value)
        getAllQuestions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReviewQuestionsEventGetZLicense value)? getAllQuestions,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReviewQuestionsEventGetZLicense value)? getAllQuestions,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewQuestionsEventCopyWith<$Res> {
  factory $ReviewQuestionsEventCopyWith(ReviewQuestionsEvent value,
          $Res Function(ReviewQuestionsEvent) then) =
      _$ReviewQuestionsEventCopyWithImpl<$Res, ReviewQuestionsEvent>;
}

/// @nodoc
class _$ReviewQuestionsEventCopyWithImpl<$Res,
        $Val extends ReviewQuestionsEvent>
    implements $ReviewQuestionsEventCopyWith<$Res> {
  _$ReviewQuestionsEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ReviewQuestionsEventGetZLicenseImplCopyWith<$Res> {
  factory _$$ReviewQuestionsEventGetZLicenseImplCopyWith(
          _$ReviewQuestionsEventGetZLicenseImpl value,
          $Res Function(_$ReviewQuestionsEventGetZLicenseImpl) then) =
      __$$ReviewQuestionsEventGetZLicenseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReviewQuestionsEventGetZLicenseImplCopyWithImpl<$Res>
    extends _$ReviewQuestionsEventCopyWithImpl<$Res,
        _$ReviewQuestionsEventGetZLicenseImpl>
    implements _$$ReviewQuestionsEventGetZLicenseImplCopyWith<$Res> {
  __$$ReviewQuestionsEventGetZLicenseImplCopyWithImpl(
      _$ReviewQuestionsEventGetZLicenseImpl _value,
      $Res Function(_$ReviewQuestionsEventGetZLicenseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReviewQuestionsEventGetZLicenseImpl
    implements ReviewQuestionsEventGetZLicense {
  const _$ReviewQuestionsEventGetZLicenseImpl();

  @override
  String toString() {
    return 'ReviewQuestionsEvent.getAllQuestions()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewQuestionsEventGetZLicenseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getAllQuestions,
  }) {
    return getAllQuestions();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getAllQuestions,
  }) {
    return getAllQuestions?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getAllQuestions,
    required TResult orElse(),
  }) {
    if (getAllQuestions != null) {
      return getAllQuestions();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReviewQuestionsEventGetZLicense value)
        getAllQuestions,
  }) {
    return getAllQuestions(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReviewQuestionsEventGetZLicense value)? getAllQuestions,
  }) {
    return getAllQuestions?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReviewQuestionsEventGetZLicense value)? getAllQuestions,
    required TResult orElse(),
  }) {
    if (getAllQuestions != null) {
      return getAllQuestions(this);
    }
    return orElse();
  }
}

abstract class ReviewQuestionsEventGetZLicense implements ReviewQuestionsEvent {
  const factory ReviewQuestionsEventGetZLicense() =
      _$ReviewQuestionsEventGetZLicenseImpl;
}

/// @nodoc
mixin _$ReviewQuestionsState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ZQuestion> zQuestions) data,
    required TResult Function(Exception error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ZQuestion> zQuestions)? data,
    TResult? Function(Exception error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ZQuestion> zQuestions)? data,
    TResult Function(Exception error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReviewQuestionsStateInItal value) initial,
    required TResult Function(ReviewQuestionsStateLoading value) loading,
    required TResult Function(ReviewQuestionsStateData value) data,
    required TResult Function(ReviewQuestionsStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReviewQuestionsStateInItal value)? initial,
    TResult? Function(ReviewQuestionsStateLoading value)? loading,
    TResult? Function(ReviewQuestionsStateData value)? data,
    TResult? Function(ReviewQuestionsStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReviewQuestionsStateInItal value)? initial,
    TResult Function(ReviewQuestionsStateLoading value)? loading,
    TResult Function(ReviewQuestionsStateData value)? data,
    TResult Function(ReviewQuestionsStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewQuestionsStateCopyWith<$Res> {
  factory $ReviewQuestionsStateCopyWith(ReviewQuestionsState value,
          $Res Function(ReviewQuestionsState) then) =
      _$ReviewQuestionsStateCopyWithImpl<$Res, ReviewQuestionsState>;
}

/// @nodoc
class _$ReviewQuestionsStateCopyWithImpl<$Res,
        $Val extends ReviewQuestionsState>
    implements $ReviewQuestionsStateCopyWith<$Res> {
  _$ReviewQuestionsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ReviewQuestionsStateInItalImplCopyWith<$Res> {
  factory _$$ReviewQuestionsStateInItalImplCopyWith(
          _$ReviewQuestionsStateInItalImpl value,
          $Res Function(_$ReviewQuestionsStateInItalImpl) then) =
      __$$ReviewQuestionsStateInItalImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReviewQuestionsStateInItalImplCopyWithImpl<$Res>
    extends _$ReviewQuestionsStateCopyWithImpl<$Res,
        _$ReviewQuestionsStateInItalImpl>
    implements _$$ReviewQuestionsStateInItalImplCopyWith<$Res> {
  __$$ReviewQuestionsStateInItalImplCopyWithImpl(
      _$ReviewQuestionsStateInItalImpl _value,
      $Res Function(_$ReviewQuestionsStateInItalImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReviewQuestionsStateInItalImpl implements ReviewQuestionsStateInItal {
  const _$ReviewQuestionsStateInItalImpl();

  @override
  String toString() {
    return 'ReviewQuestionsState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewQuestionsStateInItalImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ZQuestion> zQuestions) data,
    required TResult Function(Exception error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ZQuestion> zQuestions)? data,
    TResult? Function(Exception error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ZQuestion> zQuestions)? data,
    TResult Function(Exception error)? failure,
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
    required TResult Function(ReviewQuestionsStateInItal value) initial,
    required TResult Function(ReviewQuestionsStateLoading value) loading,
    required TResult Function(ReviewQuestionsStateData value) data,
    required TResult Function(ReviewQuestionsStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReviewQuestionsStateInItal value)? initial,
    TResult? Function(ReviewQuestionsStateLoading value)? loading,
    TResult? Function(ReviewQuestionsStateData value)? data,
    TResult? Function(ReviewQuestionsStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReviewQuestionsStateInItal value)? initial,
    TResult Function(ReviewQuestionsStateLoading value)? loading,
    TResult Function(ReviewQuestionsStateData value)? data,
    TResult Function(ReviewQuestionsStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ReviewQuestionsStateInItal implements ReviewQuestionsState {
  const factory ReviewQuestionsStateInItal() = _$ReviewQuestionsStateInItalImpl;
}

/// @nodoc
abstract class _$$ReviewQuestionsStateLoadingImplCopyWith<$Res> {
  factory _$$ReviewQuestionsStateLoadingImplCopyWith(
          _$ReviewQuestionsStateLoadingImpl value,
          $Res Function(_$ReviewQuestionsStateLoadingImpl) then) =
      __$$ReviewQuestionsStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReviewQuestionsStateLoadingImplCopyWithImpl<$Res>
    extends _$ReviewQuestionsStateCopyWithImpl<$Res,
        _$ReviewQuestionsStateLoadingImpl>
    implements _$$ReviewQuestionsStateLoadingImplCopyWith<$Res> {
  __$$ReviewQuestionsStateLoadingImplCopyWithImpl(
      _$ReviewQuestionsStateLoadingImpl _value,
      $Res Function(_$ReviewQuestionsStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReviewQuestionsStateLoadingImpl implements ReviewQuestionsStateLoading {
  const _$ReviewQuestionsStateLoadingImpl();

  @override
  String toString() {
    return 'ReviewQuestionsState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewQuestionsStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ZQuestion> zQuestions) data,
    required TResult Function(Exception error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ZQuestion> zQuestions)? data,
    TResult? Function(Exception error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ZQuestion> zQuestions)? data,
    TResult Function(Exception error)? failure,
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
    required TResult Function(ReviewQuestionsStateInItal value) initial,
    required TResult Function(ReviewQuestionsStateLoading value) loading,
    required TResult Function(ReviewQuestionsStateData value) data,
    required TResult Function(ReviewQuestionsStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReviewQuestionsStateInItal value)? initial,
    TResult? Function(ReviewQuestionsStateLoading value)? loading,
    TResult? Function(ReviewQuestionsStateData value)? data,
    TResult? Function(ReviewQuestionsStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReviewQuestionsStateInItal value)? initial,
    TResult Function(ReviewQuestionsStateLoading value)? loading,
    TResult Function(ReviewQuestionsStateData value)? data,
    TResult Function(ReviewQuestionsStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ReviewQuestionsStateLoading implements ReviewQuestionsState {
  const factory ReviewQuestionsStateLoading() =
      _$ReviewQuestionsStateLoadingImpl;
}

/// @nodoc
abstract class _$$ReviewQuestionsStateDataImplCopyWith<$Res> {
  factory _$$ReviewQuestionsStateDataImplCopyWith(
          _$ReviewQuestionsStateDataImpl value,
          $Res Function(_$ReviewQuestionsStateDataImpl) then) =
      __$$ReviewQuestionsStateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ZQuestion> zQuestions});
}

/// @nodoc
class __$$ReviewQuestionsStateDataImplCopyWithImpl<$Res>
    extends _$ReviewQuestionsStateCopyWithImpl<$Res,
        _$ReviewQuestionsStateDataImpl>
    implements _$$ReviewQuestionsStateDataImplCopyWith<$Res> {
  __$$ReviewQuestionsStateDataImplCopyWithImpl(
      _$ReviewQuestionsStateDataImpl _value,
      $Res Function(_$ReviewQuestionsStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zQuestions = null,
  }) {
    return _then(_$ReviewQuestionsStateDataImpl(
      zQuestions: null == zQuestions
          ? _value._zQuestions
          : zQuestions // ignore: cast_nullable_to_non_nullable
              as List<ZQuestion>,
    ));
  }
}

/// @nodoc

class _$ReviewQuestionsStateDataImpl implements ReviewQuestionsStateData {
  const _$ReviewQuestionsStateDataImpl(
      {required final List<ZQuestion> zQuestions})
      : _zQuestions = zQuestions;

  final List<ZQuestion> _zQuestions;
  @override
  List<ZQuestion> get zQuestions {
    if (_zQuestions is EqualUnmodifiableListView) return _zQuestions;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_zQuestions);
  }

  @override
  String toString() {
    return 'ReviewQuestionsState.data(zQuestions: $zQuestions)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewQuestionsStateDataImpl &&
            const DeepCollectionEquality()
                .equals(other._zQuestions, _zQuestions));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_zQuestions));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewQuestionsStateDataImplCopyWith<_$ReviewQuestionsStateDataImpl>
      get copyWith => __$$ReviewQuestionsStateDataImplCopyWithImpl<
          _$ReviewQuestionsStateDataImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ZQuestion> zQuestions) data,
    required TResult Function(Exception error) failure,
  }) {
    return data(zQuestions);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ZQuestion> zQuestions)? data,
    TResult? Function(Exception error)? failure,
  }) {
    return data?.call(zQuestions);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ZQuestion> zQuestions)? data,
    TResult Function(Exception error)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(zQuestions);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ReviewQuestionsStateInItal value) initial,
    required TResult Function(ReviewQuestionsStateLoading value) loading,
    required TResult Function(ReviewQuestionsStateData value) data,
    required TResult Function(ReviewQuestionsStateFailure value) failure,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReviewQuestionsStateInItal value)? initial,
    TResult? Function(ReviewQuestionsStateLoading value)? loading,
    TResult? Function(ReviewQuestionsStateData value)? data,
    TResult? Function(ReviewQuestionsStateFailure value)? failure,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReviewQuestionsStateInItal value)? initial,
    TResult Function(ReviewQuestionsStateLoading value)? loading,
    TResult Function(ReviewQuestionsStateData value)? data,
    TResult Function(ReviewQuestionsStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ReviewQuestionsStateData implements ReviewQuestionsState {
  const factory ReviewQuestionsStateData(
          {required final List<ZQuestion> zQuestions}) =
      _$ReviewQuestionsStateDataImpl;

  List<ZQuestion> get zQuestions;
  @JsonKey(ignore: true)
  _$$ReviewQuestionsStateDataImplCopyWith<_$ReviewQuestionsStateDataImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewQuestionsStateFailureImplCopyWith<$Res> {
  factory _$$ReviewQuestionsStateFailureImplCopyWith(
          _$ReviewQuestionsStateFailureImpl value,
          $Res Function(_$ReviewQuestionsStateFailureImpl) then) =
      __$$ReviewQuestionsStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception error});
}

/// @nodoc
class __$$ReviewQuestionsStateFailureImplCopyWithImpl<$Res>
    extends _$ReviewQuestionsStateCopyWithImpl<$Res,
        _$ReviewQuestionsStateFailureImpl>
    implements _$$ReviewQuestionsStateFailureImplCopyWith<$Res> {
  __$$ReviewQuestionsStateFailureImplCopyWithImpl(
      _$ReviewQuestionsStateFailureImpl _value,
      $Res Function(_$ReviewQuestionsStateFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ReviewQuestionsStateFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$ReviewQuestionsStateFailureImpl implements ReviewQuestionsStateFailure {
  const _$ReviewQuestionsStateFailureImpl({required this.error});

  @override
  final Exception error;

  @override
  String toString() {
    return 'ReviewQuestionsState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewQuestionsStateFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewQuestionsStateFailureImplCopyWith<_$ReviewQuestionsStateFailureImpl>
      get copyWith => __$$ReviewQuestionsStateFailureImplCopyWithImpl<
          _$ReviewQuestionsStateFailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ZQuestion> zQuestions) data,
    required TResult Function(Exception error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ZQuestion> zQuestions)? data,
    TResult? Function(Exception error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ZQuestion> zQuestions)? data,
    TResult Function(Exception error)? failure,
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
    required TResult Function(ReviewQuestionsStateInItal value) initial,
    required TResult Function(ReviewQuestionsStateLoading value) loading,
    required TResult Function(ReviewQuestionsStateData value) data,
    required TResult Function(ReviewQuestionsStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReviewQuestionsStateInItal value)? initial,
    TResult? Function(ReviewQuestionsStateLoading value)? loading,
    TResult? Function(ReviewQuestionsStateData value)? data,
    TResult? Function(ReviewQuestionsStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReviewQuestionsStateInItal value)? initial,
    TResult Function(ReviewQuestionsStateLoading value)? loading,
    TResult Function(ReviewQuestionsStateData value)? data,
    TResult Function(ReviewQuestionsStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ReviewQuestionsStateFailure implements ReviewQuestionsState {
  const factory ReviewQuestionsStateFailure({required final Exception error}) =
      _$ReviewQuestionsStateFailureImpl;

  Exception get error;
  @JsonKey(ignore: true)
  _$$ReviewQuestionsStateFailureImplCopyWith<_$ReviewQuestionsStateFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}