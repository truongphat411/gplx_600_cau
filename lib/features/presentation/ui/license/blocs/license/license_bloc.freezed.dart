// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'license_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LicenseEvent {
  String get Z_NAME => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String Z_NAME) getAllLicenses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String Z_NAME)? getAllLicenses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String Z_NAME)? getAllLicenses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LicenseEventGetAllLicense value) getAllLicenses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LicenseEventGetAllLicense value)? getAllLicenses,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LicenseEventGetAllLicense value)? getAllLicenses,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LicenseEventCopyWith<LicenseEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LicenseEventCopyWith<$Res> {
  factory $LicenseEventCopyWith(
          LicenseEvent value, $Res Function(LicenseEvent) then) =
      _$LicenseEventCopyWithImpl<$Res, LicenseEvent>;
  @useResult
  $Res call({String Z_NAME});
}

/// @nodoc
class _$LicenseEventCopyWithImpl<$Res, $Val extends LicenseEvent>
    implements $LicenseEventCopyWith<$Res> {
  _$LicenseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Z_NAME = null,
  }) {
    return _then(_value.copyWith(
      Z_NAME: null == Z_NAME
          ? _value.Z_NAME
          : Z_NAME // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LicenseEventGetAllLicenseImplCopyWith<$Res>
    implements $LicenseEventCopyWith<$Res> {
  factory _$$LicenseEventGetAllLicenseImplCopyWith(
          _$LicenseEventGetAllLicenseImpl value,
          $Res Function(_$LicenseEventGetAllLicenseImpl) then) =
      __$$LicenseEventGetAllLicenseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String Z_NAME});
}

/// @nodoc
class __$$LicenseEventGetAllLicenseImplCopyWithImpl<$Res>
    extends _$LicenseEventCopyWithImpl<$Res, _$LicenseEventGetAllLicenseImpl>
    implements _$$LicenseEventGetAllLicenseImplCopyWith<$Res> {
  __$$LicenseEventGetAllLicenseImplCopyWithImpl(
      _$LicenseEventGetAllLicenseImpl _value,
      $Res Function(_$LicenseEventGetAllLicenseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Z_NAME = null,
  }) {
    return _then(_$LicenseEventGetAllLicenseImpl(
      null == Z_NAME
          ? _value.Z_NAME
          : Z_NAME // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LicenseEventGetAllLicenseImpl implements LicenseEventGetAllLicense {
  const _$LicenseEventGetAllLicenseImpl(this.Z_NAME);

  @override
  final String Z_NAME;

  @override
  String toString() {
    return 'LicenseEvent.getAllLicenses(Z_NAME: $Z_NAME)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LicenseEventGetAllLicenseImpl &&
            (identical(other.Z_NAME, Z_NAME) || other.Z_NAME == Z_NAME));
  }

  @override
  int get hashCode => Object.hash(runtimeType, Z_NAME);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LicenseEventGetAllLicenseImplCopyWith<_$LicenseEventGetAllLicenseImpl>
      get copyWith => __$$LicenseEventGetAllLicenseImplCopyWithImpl<
          _$LicenseEventGetAllLicenseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String Z_NAME) getAllLicenses,
  }) {
    return getAllLicenses(Z_NAME);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String Z_NAME)? getAllLicenses,
  }) {
    return getAllLicenses?.call(Z_NAME);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String Z_NAME)? getAllLicenses,
    required TResult orElse(),
  }) {
    if (getAllLicenses != null) {
      return getAllLicenses(Z_NAME);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LicenseEventGetAllLicense value) getAllLicenses,
  }) {
    return getAllLicenses(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LicenseEventGetAllLicense value)? getAllLicenses,
  }) {
    return getAllLicenses?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LicenseEventGetAllLicense value)? getAllLicenses,
    required TResult orElse(),
  }) {
    if (getAllLicenses != null) {
      return getAllLicenses(this);
    }
    return orElse();
  }
}

abstract class LicenseEventGetAllLicense implements LicenseEvent {
  const factory LicenseEventGetAllLicense(final String Z_NAME) =
      _$LicenseEventGetAllLicenseImpl;

  @override
  String get Z_NAME;
  @override
  @JsonKey(ignore: true)
  _$$LicenseEventGetAllLicenseImplCopyWith<_$LicenseEventGetAllLicenseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$LicenseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ZLicense> zLicenses) data,
    required TResult Function(Exception error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ZLicense> zLicenses)? data,
    TResult? Function(Exception error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ZLicense> zLicenses)? data,
    TResult Function(Exception error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LicenseStateInItal value) initial,
    required TResult Function(LicenseStateLoading value) loading,
    required TResult Function(LicenseStateData value) data,
    required TResult Function(LicenseStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LicenseStateInItal value)? initial,
    TResult? Function(LicenseStateLoading value)? loading,
    TResult? Function(LicenseStateData value)? data,
    TResult? Function(LicenseStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LicenseStateInItal value)? initial,
    TResult Function(LicenseStateLoading value)? loading,
    TResult Function(LicenseStateData value)? data,
    TResult Function(LicenseStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LicenseStateCopyWith<$Res> {
  factory $LicenseStateCopyWith(
          LicenseState value, $Res Function(LicenseState) then) =
      _$LicenseStateCopyWithImpl<$Res, LicenseState>;
}

/// @nodoc
class _$LicenseStateCopyWithImpl<$Res, $Val extends LicenseState>
    implements $LicenseStateCopyWith<$Res> {
  _$LicenseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$LicenseStateInItalImplCopyWith<$Res> {
  factory _$$LicenseStateInItalImplCopyWith(_$LicenseStateInItalImpl value,
          $Res Function(_$LicenseStateInItalImpl) then) =
      __$$LicenseStateInItalImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LicenseStateInItalImplCopyWithImpl<$Res>
    extends _$LicenseStateCopyWithImpl<$Res, _$LicenseStateInItalImpl>
    implements _$$LicenseStateInItalImplCopyWith<$Res> {
  __$$LicenseStateInItalImplCopyWithImpl(_$LicenseStateInItalImpl _value,
      $Res Function(_$LicenseStateInItalImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LicenseStateInItalImpl implements LicenseStateInItal {
  const _$LicenseStateInItalImpl();

  @override
  String toString() {
    return 'LicenseState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LicenseStateInItalImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ZLicense> zLicenses) data,
    required TResult Function(Exception error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ZLicense> zLicenses)? data,
    TResult? Function(Exception error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ZLicense> zLicenses)? data,
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
    required TResult Function(LicenseStateInItal value) initial,
    required TResult Function(LicenseStateLoading value) loading,
    required TResult Function(LicenseStateData value) data,
    required TResult Function(LicenseStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LicenseStateInItal value)? initial,
    TResult? Function(LicenseStateLoading value)? loading,
    TResult? Function(LicenseStateData value)? data,
    TResult? Function(LicenseStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LicenseStateInItal value)? initial,
    TResult Function(LicenseStateLoading value)? loading,
    TResult Function(LicenseStateData value)? data,
    TResult Function(LicenseStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class LicenseStateInItal implements LicenseState {
  const factory LicenseStateInItal() = _$LicenseStateInItalImpl;
}

/// @nodoc
abstract class _$$LicenseStateLoadingImplCopyWith<$Res> {
  factory _$$LicenseStateLoadingImplCopyWith(_$LicenseStateLoadingImpl value,
          $Res Function(_$LicenseStateLoadingImpl) then) =
      __$$LicenseStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LicenseStateLoadingImplCopyWithImpl<$Res>
    extends _$LicenseStateCopyWithImpl<$Res, _$LicenseStateLoadingImpl>
    implements _$$LicenseStateLoadingImplCopyWith<$Res> {
  __$$LicenseStateLoadingImplCopyWithImpl(_$LicenseStateLoadingImpl _value,
      $Res Function(_$LicenseStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LicenseStateLoadingImpl implements LicenseStateLoading {
  const _$LicenseStateLoadingImpl();

  @override
  String toString() {
    return 'LicenseState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LicenseStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ZLicense> zLicenses) data,
    required TResult Function(Exception error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ZLicense> zLicenses)? data,
    TResult? Function(Exception error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ZLicense> zLicenses)? data,
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
    required TResult Function(LicenseStateInItal value) initial,
    required TResult Function(LicenseStateLoading value) loading,
    required TResult Function(LicenseStateData value) data,
    required TResult Function(LicenseStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LicenseStateInItal value)? initial,
    TResult? Function(LicenseStateLoading value)? loading,
    TResult? Function(LicenseStateData value)? data,
    TResult? Function(LicenseStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LicenseStateInItal value)? initial,
    TResult Function(LicenseStateLoading value)? loading,
    TResult Function(LicenseStateData value)? data,
    TResult Function(LicenseStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class LicenseStateLoading implements LicenseState {
  const factory LicenseStateLoading() = _$LicenseStateLoadingImpl;
}

/// @nodoc
abstract class _$$LicenseStateDataImplCopyWith<$Res> {
  factory _$$LicenseStateDataImplCopyWith(_$LicenseStateDataImpl value,
          $Res Function(_$LicenseStateDataImpl) then) =
      __$$LicenseStateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ZLicense> zLicenses});
}

/// @nodoc
class __$$LicenseStateDataImplCopyWithImpl<$Res>
    extends _$LicenseStateCopyWithImpl<$Res, _$LicenseStateDataImpl>
    implements _$$LicenseStateDataImplCopyWith<$Res> {
  __$$LicenseStateDataImplCopyWithImpl(_$LicenseStateDataImpl _value,
      $Res Function(_$LicenseStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zLicenses = null,
  }) {
    return _then(_$LicenseStateDataImpl(
      zLicenses: null == zLicenses
          ? _value._zLicenses
          : zLicenses // ignore: cast_nullable_to_non_nullable
              as List<ZLicense>,
    ));
  }
}

/// @nodoc

class _$LicenseStateDataImpl implements LicenseStateData {
  const _$LicenseStateDataImpl({required final List<ZLicense> zLicenses})
      : _zLicenses = zLicenses;

  final List<ZLicense> _zLicenses;
  @override
  List<ZLicense> get zLicenses {
    if (_zLicenses is EqualUnmodifiableListView) return _zLicenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_zLicenses);
  }

  @override
  String toString() {
    return 'LicenseState.data(zLicenses: $zLicenses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LicenseStateDataImpl &&
            const DeepCollectionEquality()
                .equals(other._zLicenses, _zLicenses));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_zLicenses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LicenseStateDataImplCopyWith<_$LicenseStateDataImpl> get copyWith =>
      __$$LicenseStateDataImplCopyWithImpl<_$LicenseStateDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ZLicense> zLicenses) data,
    required TResult Function(Exception error) failure,
  }) {
    return data(zLicenses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ZLicense> zLicenses)? data,
    TResult? Function(Exception error)? failure,
  }) {
    return data?.call(zLicenses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ZLicense> zLicenses)? data,
    TResult Function(Exception error)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(zLicenses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(LicenseStateInItal value) initial,
    required TResult Function(LicenseStateLoading value) loading,
    required TResult Function(LicenseStateData value) data,
    required TResult Function(LicenseStateFailure value) failure,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LicenseStateInItal value)? initial,
    TResult? Function(LicenseStateLoading value)? loading,
    TResult? Function(LicenseStateData value)? data,
    TResult? Function(LicenseStateFailure value)? failure,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LicenseStateInItal value)? initial,
    TResult Function(LicenseStateLoading value)? loading,
    TResult Function(LicenseStateData value)? data,
    TResult Function(LicenseStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class LicenseStateData implements LicenseState {
  const factory LicenseStateData({required final List<ZLicense> zLicenses}) =
      _$LicenseStateDataImpl;

  List<ZLicense> get zLicenses;
  @JsonKey(ignore: true)
  _$$LicenseStateDataImplCopyWith<_$LicenseStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LicenseStateFailureImplCopyWith<$Res> {
  factory _$$LicenseStateFailureImplCopyWith(_$LicenseStateFailureImpl value,
          $Res Function(_$LicenseStateFailureImpl) then) =
      __$$LicenseStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception error});
}

/// @nodoc
class __$$LicenseStateFailureImplCopyWithImpl<$Res>
    extends _$LicenseStateCopyWithImpl<$Res, _$LicenseStateFailureImpl>
    implements _$$LicenseStateFailureImplCopyWith<$Res> {
  __$$LicenseStateFailureImplCopyWithImpl(_$LicenseStateFailureImpl _value,
      $Res Function(_$LicenseStateFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$LicenseStateFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$LicenseStateFailureImpl implements LicenseStateFailure {
  const _$LicenseStateFailureImpl({required this.error});

  @override
  final Exception error;

  @override
  String toString() {
    return 'LicenseState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LicenseStateFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LicenseStateFailureImplCopyWith<_$LicenseStateFailureImpl> get copyWith =>
      __$$LicenseStateFailureImplCopyWithImpl<_$LicenseStateFailureImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ZLicense> zLicenses) data,
    required TResult Function(Exception error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ZLicense> zLicenses)? data,
    TResult? Function(Exception error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ZLicense> zLicenses)? data,
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
    required TResult Function(LicenseStateInItal value) initial,
    required TResult Function(LicenseStateLoading value) loading,
    required TResult Function(LicenseStateData value) data,
    required TResult Function(LicenseStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(LicenseStateInItal value)? initial,
    TResult? Function(LicenseStateLoading value)? loading,
    TResult? Function(LicenseStateData value)? data,
    TResult? Function(LicenseStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(LicenseStateInItal value)? initial,
    TResult Function(LicenseStateLoading value)? loading,
    TResult Function(LicenseStateData value)? data,
    TResult Function(LicenseStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class LicenseStateFailure implements LicenseState {
  const factory LicenseStateFailure({required final Exception error}) =
      _$LicenseStateFailureImpl;

  Exception get error;
  @JsonKey(ignore: true)
  _$$LicenseStateFailureImplCopyWith<_$LicenseStateFailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
