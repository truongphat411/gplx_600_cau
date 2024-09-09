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
    required TResult Function() getQuestionStatistics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getQuestionStatistics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getQuestionStatistics,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventGetQuestionStatistics value)
        getQuestionStatistics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventGetQuestionStatistics value)?
        getQuestionStatistics,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventGetQuestionStatistics value)?
        getQuestionStatistics,
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
abstract class _$$HomeEventGetQuestionStatisticsImplCopyWith<$Res> {
  factory _$$HomeEventGetQuestionStatisticsImplCopyWith(
          _$HomeEventGetQuestionStatisticsImpl value,
          $Res Function(_$HomeEventGetQuestionStatisticsImpl) then) =
      __$$HomeEventGetQuestionStatisticsImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$HomeEventGetQuestionStatisticsImplCopyWithImpl<$Res>
    extends _$HomeEventCopyWithImpl<$Res, _$HomeEventGetQuestionStatisticsImpl>
    implements _$$HomeEventGetQuestionStatisticsImplCopyWith<$Res> {
  __$$HomeEventGetQuestionStatisticsImplCopyWithImpl(
      _$HomeEventGetQuestionStatisticsImpl _value,
      $Res Function(_$HomeEventGetQuestionStatisticsImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$HomeEventGetQuestionStatisticsImpl
    implements HomeEventGetQuestionStatistics {
  const _$HomeEventGetQuestionStatisticsImpl();

  @override
  String toString() {
    return 'HomeEvent.getQuestionStatistics()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeEventGetQuestionStatisticsImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getQuestionStatistics,
  }) {
    return getQuestionStatistics();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? getQuestionStatistics,
  }) {
    return getQuestionStatistics?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getQuestionStatistics,
    required TResult orElse(),
  }) {
    if (getQuestionStatistics != null) {
      return getQuestionStatistics();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeEventGetQuestionStatistics value)
        getQuestionStatistics,
  }) {
    return getQuestionStatistics(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeEventGetQuestionStatistics value)?
        getQuestionStatistics,
  }) {
    return getQuestionStatistics?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeEventGetQuestionStatistics value)?
        getQuestionStatistics,
    required TResult orElse(),
  }) {
    if (getQuestionStatistics != null) {
      return getQuestionStatistics(this);
    }
    return orElse();
  }
}

abstract class HomeEventGetQuestionStatistics implements HomeEvent {
  const factory HomeEventGetQuestionStatistics() =
      _$HomeEventGetQuestionStatisticsImpl;
}

/// @nodoc
mixin _$HomeState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ZNumberQuestionPerType> questionPerType)
        data,
    required TResult Function(Exception error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ZNumberQuestionPerType> questionPerType)? data,
    TResult? Function(Exception error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ZNumberQuestionPerType> questionPerType)? data,
    TResult Function(Exception error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInItal value) initial,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateData value) data,
    required TResult Function(HomeStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInItal value)? initial,
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStateData value)? data,
    TResult? Function(HomeStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInItal value)? initial,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateData value)? data,
    TResult Function(HomeStateFailure value)? failure,
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
    required TResult Function(List<ZNumberQuestionPerType> questionPerType)
        data,
    required TResult Function(Exception error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ZNumberQuestionPerType> questionPerType)? data,
    TResult? Function(Exception error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ZNumberQuestionPerType> questionPerType)? data,
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
    required TResult Function(HomeStateInItal value) initial,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateData value) data,
    required TResult Function(HomeStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInItal value)? initial,
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStateData value)? data,
    TResult? Function(HomeStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInItal value)? initial,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateData value)? data,
    TResult Function(HomeStateFailure value)? failure,
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
    required TResult Function(List<ZNumberQuestionPerType> questionPerType)
        data,
    required TResult Function(Exception error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ZNumberQuestionPerType> questionPerType)? data,
    TResult? Function(Exception error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ZNumberQuestionPerType> questionPerType)? data,
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
    required TResult Function(HomeStateInItal value) initial,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateData value) data,
    required TResult Function(HomeStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInItal value)? initial,
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStateData value)? data,
    TResult? Function(HomeStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInItal value)? initial,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateData value)? data,
    TResult Function(HomeStateFailure value)? failure,
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
abstract class _$$HomeStateDataImplCopyWith<$Res> {
  factory _$$HomeStateDataImplCopyWith(
          _$HomeStateDataImpl value, $Res Function(_$HomeStateDataImpl) then) =
      __$$HomeStateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ZNumberQuestionPerType> questionPerType});
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
    Object? questionPerType = null,
  }) {
    return _then(_$HomeStateDataImpl(
      questionPerType: null == questionPerType
          ? _value._questionPerType
          : questionPerType // ignore: cast_nullable_to_non_nullable
              as List<ZNumberQuestionPerType>,
    ));
  }
}

/// @nodoc

class _$HomeStateDataImpl implements HomeStateData {
  const _$HomeStateDataImpl(
      {required final List<ZNumberQuestionPerType> questionPerType})
      : _questionPerType = questionPerType;

  final List<ZNumberQuestionPerType> _questionPerType;
  @override
  List<ZNumberQuestionPerType> get questionPerType {
    if (_questionPerType is EqualUnmodifiableListView) return _questionPerType;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_questionPerType);
  }

  @override
  String toString() {
    return 'HomeState.data(questionPerType: $questionPerType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$HomeStateDataImpl &&
            const DeepCollectionEquality()
                .equals(other._questionPerType, _questionPerType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_questionPerType));

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
    required TResult Function(List<ZNumberQuestionPerType> questionPerType)
        data,
    required TResult Function(Exception error) failure,
  }) {
    return data(questionPerType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ZNumberQuestionPerType> questionPerType)? data,
    TResult? Function(Exception error)? failure,
  }) {
    return data?.call(questionPerType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ZNumberQuestionPerType> questionPerType)? data,
    TResult Function(Exception error)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(questionPerType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(HomeStateInItal value) initial,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateData value) data,
    required TResult Function(HomeStateFailure value) failure,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInItal value)? initial,
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStateData value)? data,
    TResult? Function(HomeStateFailure value)? failure,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInItal value)? initial,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateData value)? data,
    TResult Function(HomeStateFailure value)? failure,
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
          {required final List<ZNumberQuestionPerType> questionPerType}) =
      _$HomeStateDataImpl;

  List<ZNumberQuestionPerType> get questionPerType;
  @JsonKey(ignore: true)
  _$$HomeStateDataImplCopyWith<_$HomeStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
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
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$HomeStateFailureImpl implements HomeStateFailure {
  const _$HomeStateFailureImpl({required this.error});

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
    required TResult Function(List<ZNumberQuestionPerType> questionPerType)
        data,
    required TResult Function(Exception error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ZNumberQuestionPerType> questionPerType)? data,
    TResult? Function(Exception error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ZNumberQuestionPerType> questionPerType)? data,
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
    required TResult Function(HomeStateInItal value) initial,
    required TResult Function(HomeStateLoading value) loading,
    required TResult Function(HomeStateData value) data,
    required TResult Function(HomeStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(HomeStateInItal value)? initial,
    TResult? Function(HomeStateLoading value)? loading,
    TResult? Function(HomeStateData value)? data,
    TResult? Function(HomeStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(HomeStateInItal value)? initial,
    TResult Function(HomeStateLoading value)? loading,
    TResult Function(HomeStateData value)? data,
    TResult Function(HomeStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class HomeStateFailure implements HomeState {
  const factory HomeStateFailure({required final Exception error}) =
      _$HomeStateFailureImpl;

  Exception get error;
  @JsonKey(ignore: true)
  _$$HomeStateFailureImplCopyWith<_$HomeStateFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
