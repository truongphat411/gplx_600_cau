// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zlicense_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ZLicenseEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getZLicense,
    required TResult Function(int? Z_PK) selectedZLicense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getZLicense,
    TResult? Function(int? Z_PK)? selectedZLicense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getZLicense,
    TResult Function(int? Z_PK)? selectedZLicense,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ZLicenseEventStarted value) started,
    required TResult Function(ZLicenseEventGetZLicense value) getZLicense,
    required TResult Function(ZLicenseEventSelectedLincense value)
        selectedZLicense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ZLicenseEventStarted value)? started,
    TResult? Function(ZLicenseEventGetZLicense value)? getZLicense,
    TResult? Function(ZLicenseEventSelectedLincense value)? selectedZLicense,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ZLicenseEventStarted value)? started,
    TResult Function(ZLicenseEventGetZLicense value)? getZLicense,
    TResult Function(ZLicenseEventSelectedLincense value)? selectedZLicense,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZLicenseEventCopyWith<$Res> {
  factory $ZLicenseEventCopyWith(
          ZLicenseEvent value, $Res Function(ZLicenseEvent) then) =
      _$ZLicenseEventCopyWithImpl<$Res, ZLicenseEvent>;
}

/// @nodoc
class _$ZLicenseEventCopyWithImpl<$Res, $Val extends ZLicenseEvent>
    implements $ZLicenseEventCopyWith<$Res> {
  _$ZLicenseEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ZLicenseEventStartedImplCopyWith<$Res> {
  factory _$$ZLicenseEventStartedImplCopyWith(_$ZLicenseEventStartedImpl value,
          $Res Function(_$ZLicenseEventStartedImpl) then) =
      __$$ZLicenseEventStartedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ZLicenseEventStartedImplCopyWithImpl<$Res>
    extends _$ZLicenseEventCopyWithImpl<$Res, _$ZLicenseEventStartedImpl>
    implements _$$ZLicenseEventStartedImplCopyWith<$Res> {
  __$$ZLicenseEventStartedImplCopyWithImpl(_$ZLicenseEventStartedImpl _value,
      $Res Function(_$ZLicenseEventStartedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ZLicenseEventStartedImpl implements ZLicenseEventStarted {
  const _$ZLicenseEventStartedImpl();

  @override
  String toString() {
    return 'ZLicenseEvent.started()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZLicenseEventStartedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getZLicense,
    required TResult Function(int? Z_PK) selectedZLicense,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getZLicense,
    TResult? Function(int? Z_PK)? selectedZLicense,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getZLicense,
    TResult Function(int? Z_PK)? selectedZLicense,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ZLicenseEventStarted value) started,
    required TResult Function(ZLicenseEventGetZLicense value) getZLicense,
    required TResult Function(ZLicenseEventSelectedLincense value)
        selectedZLicense,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ZLicenseEventStarted value)? started,
    TResult? Function(ZLicenseEventGetZLicense value)? getZLicense,
    TResult? Function(ZLicenseEventSelectedLincense value)? selectedZLicense,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ZLicenseEventStarted value)? started,
    TResult Function(ZLicenseEventGetZLicense value)? getZLicense,
    TResult Function(ZLicenseEventSelectedLincense value)? selectedZLicense,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class ZLicenseEventStarted implements ZLicenseEvent {
  const factory ZLicenseEventStarted() = _$ZLicenseEventStartedImpl;
}

/// @nodoc
abstract class _$$ZLicenseEventGetZLicenseImplCopyWith<$Res> {
  factory _$$ZLicenseEventGetZLicenseImplCopyWith(
          _$ZLicenseEventGetZLicenseImpl value,
          $Res Function(_$ZLicenseEventGetZLicenseImpl) then) =
      __$$ZLicenseEventGetZLicenseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ZLicenseEventGetZLicenseImplCopyWithImpl<$Res>
    extends _$ZLicenseEventCopyWithImpl<$Res, _$ZLicenseEventGetZLicenseImpl>
    implements _$$ZLicenseEventGetZLicenseImplCopyWith<$Res> {
  __$$ZLicenseEventGetZLicenseImplCopyWithImpl(
      _$ZLicenseEventGetZLicenseImpl _value,
      $Res Function(_$ZLicenseEventGetZLicenseImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ZLicenseEventGetZLicenseImpl implements ZLicenseEventGetZLicense {
  const _$ZLicenseEventGetZLicenseImpl();

  @override
  String toString() {
    return 'ZLicenseEvent.getZLicense()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZLicenseEventGetZLicenseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getZLicense,
    required TResult Function(int? Z_PK) selectedZLicense,
  }) {
    return getZLicense();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getZLicense,
    TResult? Function(int? Z_PK)? selectedZLicense,
  }) {
    return getZLicense?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getZLicense,
    TResult Function(int? Z_PK)? selectedZLicense,
    required TResult orElse(),
  }) {
    if (getZLicense != null) {
      return getZLicense();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ZLicenseEventStarted value) started,
    required TResult Function(ZLicenseEventGetZLicense value) getZLicense,
    required TResult Function(ZLicenseEventSelectedLincense value)
        selectedZLicense,
  }) {
    return getZLicense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ZLicenseEventStarted value)? started,
    TResult? Function(ZLicenseEventGetZLicense value)? getZLicense,
    TResult? Function(ZLicenseEventSelectedLincense value)? selectedZLicense,
  }) {
    return getZLicense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ZLicenseEventStarted value)? started,
    TResult Function(ZLicenseEventGetZLicense value)? getZLicense,
    TResult Function(ZLicenseEventSelectedLincense value)? selectedZLicense,
    required TResult orElse(),
  }) {
    if (getZLicense != null) {
      return getZLicense(this);
    }
    return orElse();
  }
}

abstract class ZLicenseEventGetZLicense implements ZLicenseEvent {
  const factory ZLicenseEventGetZLicense() = _$ZLicenseEventGetZLicenseImpl;
}

/// @nodoc
abstract class _$$ZLicenseEventSelectedLincenseImplCopyWith<$Res> {
  factory _$$ZLicenseEventSelectedLincenseImplCopyWith(
          _$ZLicenseEventSelectedLincenseImpl value,
          $Res Function(_$ZLicenseEventSelectedLincenseImpl) then) =
      __$$ZLicenseEventSelectedLincenseImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? Z_PK});
}

/// @nodoc
class __$$ZLicenseEventSelectedLincenseImplCopyWithImpl<$Res>
    extends _$ZLicenseEventCopyWithImpl<$Res,
        _$ZLicenseEventSelectedLincenseImpl>
    implements _$$ZLicenseEventSelectedLincenseImplCopyWith<$Res> {
  __$$ZLicenseEventSelectedLincenseImplCopyWithImpl(
      _$ZLicenseEventSelectedLincenseImpl _value,
      $Res Function(_$ZLicenseEventSelectedLincenseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? Z_PK = freezed,
  }) {
    return _then(_$ZLicenseEventSelectedLincenseImpl(
      freezed == Z_PK
          ? _value.Z_PK
          : Z_PK // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$ZLicenseEventSelectedLincenseImpl
    implements ZLicenseEventSelectedLincense {
  const _$ZLicenseEventSelectedLincenseImpl(this.Z_PK);

  @override
  final int? Z_PK;

  @override
  String toString() {
    return 'ZLicenseEvent.selectedZLicense(Z_PK: $Z_PK)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZLicenseEventSelectedLincenseImpl &&
            (identical(other.Z_PK, Z_PK) || other.Z_PK == Z_PK));
  }

  @override
  int get hashCode => Object.hash(runtimeType, Z_PK);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZLicenseEventSelectedLincenseImplCopyWith<
          _$ZLicenseEventSelectedLincenseImpl>
      get copyWith => __$$ZLicenseEventSelectedLincenseImplCopyWithImpl<
          _$ZLicenseEventSelectedLincenseImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() getZLicense,
    required TResult Function(int? Z_PK) selectedZLicense,
  }) {
    return selectedZLicense(Z_PK);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function()? getZLicense,
    TResult? Function(int? Z_PK)? selectedZLicense,
  }) {
    return selectedZLicense?.call(Z_PK);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? getZLicense,
    TResult Function(int? Z_PK)? selectedZLicense,
    required TResult orElse(),
  }) {
    if (selectedZLicense != null) {
      return selectedZLicense(Z_PK);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ZLicenseEventStarted value) started,
    required TResult Function(ZLicenseEventGetZLicense value) getZLicense,
    required TResult Function(ZLicenseEventSelectedLincense value)
        selectedZLicense,
  }) {
    return selectedZLicense(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ZLicenseEventStarted value)? started,
    TResult? Function(ZLicenseEventGetZLicense value)? getZLicense,
    TResult? Function(ZLicenseEventSelectedLincense value)? selectedZLicense,
  }) {
    return selectedZLicense?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ZLicenseEventStarted value)? started,
    TResult Function(ZLicenseEventGetZLicense value)? getZLicense,
    TResult Function(ZLicenseEventSelectedLincense value)? selectedZLicense,
    required TResult orElse(),
  }) {
    if (selectedZLicense != null) {
      return selectedZLicense(this);
    }
    return orElse();
  }
}

abstract class ZLicenseEventSelectedLincense implements ZLicenseEvent {
  const factory ZLicenseEventSelectedLincense(final int? Z_PK) =
      _$ZLicenseEventSelectedLincenseImpl;

  int? get Z_PK;
  @JsonKey(ignore: true)
  _$$ZLicenseEventSelectedLincenseImplCopyWith<
          _$ZLicenseEventSelectedLincenseImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ZLicenseState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ZLicense> zlicenses) data,
    required TResult Function(Exception error) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ZLicense> zlicenses)? data,
    TResult? Function(Exception error)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ZLicense> zlicenses)? data,
    TResult Function(Exception error)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ZLicenseStateInital value) initial,
    required TResult Function(ZLicenseStateLoading value) loading,
    required TResult Function(ZLicenseStateData value) data,
    required TResult Function(ZLicenseStateFailure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ZLicenseStateInital value)? initial,
    TResult? Function(ZLicenseStateLoading value)? loading,
    TResult? Function(ZLicenseStateData value)? data,
    TResult? Function(ZLicenseStateFailure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ZLicenseStateInital value)? initial,
    TResult Function(ZLicenseStateLoading value)? loading,
    TResult Function(ZLicenseStateData value)? data,
    TResult Function(ZLicenseStateFailure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZLicenseStateCopyWith<$Res> {
  factory $ZLicenseStateCopyWith(
          ZLicenseState value, $Res Function(ZLicenseState) then) =
      _$ZLicenseStateCopyWithImpl<$Res, ZLicenseState>;
}

/// @nodoc
class _$ZLicenseStateCopyWithImpl<$Res, $Val extends ZLicenseState>
    implements $ZLicenseStateCopyWith<$Res> {
  _$ZLicenseStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ZLicenseStateInitalImplCopyWith<$Res> {
  factory _$$ZLicenseStateInitalImplCopyWith(_$ZLicenseStateInitalImpl value,
          $Res Function(_$ZLicenseStateInitalImpl) then) =
      __$$ZLicenseStateInitalImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ZLicenseStateInitalImplCopyWithImpl<$Res>
    extends _$ZLicenseStateCopyWithImpl<$Res, _$ZLicenseStateInitalImpl>
    implements _$$ZLicenseStateInitalImplCopyWith<$Res> {
  __$$ZLicenseStateInitalImplCopyWithImpl(_$ZLicenseStateInitalImpl _value,
      $Res Function(_$ZLicenseStateInitalImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ZLicenseStateInitalImpl implements ZLicenseStateInital {
  const _$ZLicenseStateInitalImpl();

  @override
  String toString() {
    return 'ZLicenseState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZLicenseStateInitalImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ZLicense> zlicenses) data,
    required TResult Function(Exception error) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ZLicense> zlicenses)? data,
    TResult? Function(Exception error)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ZLicense> zlicenses)? data,
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
    required TResult Function(ZLicenseStateInital value) initial,
    required TResult Function(ZLicenseStateLoading value) loading,
    required TResult Function(ZLicenseStateData value) data,
    required TResult Function(ZLicenseStateFailure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ZLicenseStateInital value)? initial,
    TResult? Function(ZLicenseStateLoading value)? loading,
    TResult? Function(ZLicenseStateData value)? data,
    TResult? Function(ZLicenseStateFailure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ZLicenseStateInital value)? initial,
    TResult Function(ZLicenseStateLoading value)? loading,
    TResult Function(ZLicenseStateData value)? data,
    TResult Function(ZLicenseStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ZLicenseStateInital implements ZLicenseState {
  const factory ZLicenseStateInital() = _$ZLicenseStateInitalImpl;
}

/// @nodoc
abstract class _$$ZLicenseStateLoadingImplCopyWith<$Res> {
  factory _$$ZLicenseStateLoadingImplCopyWith(_$ZLicenseStateLoadingImpl value,
          $Res Function(_$ZLicenseStateLoadingImpl) then) =
      __$$ZLicenseStateLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ZLicenseStateLoadingImplCopyWithImpl<$Res>
    extends _$ZLicenseStateCopyWithImpl<$Res, _$ZLicenseStateLoadingImpl>
    implements _$$ZLicenseStateLoadingImplCopyWith<$Res> {
  __$$ZLicenseStateLoadingImplCopyWithImpl(_$ZLicenseStateLoadingImpl _value,
      $Res Function(_$ZLicenseStateLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ZLicenseStateLoadingImpl implements ZLicenseStateLoading {
  const _$ZLicenseStateLoadingImpl();

  @override
  String toString() {
    return 'ZLicenseState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZLicenseStateLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ZLicense> zlicenses) data,
    required TResult Function(Exception error) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ZLicense> zlicenses)? data,
    TResult? Function(Exception error)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ZLicense> zlicenses)? data,
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
    required TResult Function(ZLicenseStateInital value) initial,
    required TResult Function(ZLicenseStateLoading value) loading,
    required TResult Function(ZLicenseStateData value) data,
    required TResult Function(ZLicenseStateFailure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ZLicenseStateInital value)? initial,
    TResult? Function(ZLicenseStateLoading value)? loading,
    TResult? Function(ZLicenseStateData value)? data,
    TResult? Function(ZLicenseStateFailure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ZLicenseStateInital value)? initial,
    TResult Function(ZLicenseStateLoading value)? loading,
    TResult Function(ZLicenseStateData value)? data,
    TResult Function(ZLicenseStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class ZLicenseStateLoading implements ZLicenseState {
  const factory ZLicenseStateLoading() = _$ZLicenseStateLoadingImpl;
}

/// @nodoc
abstract class _$$ZLicenseStateDataImplCopyWith<$Res> {
  factory _$$ZLicenseStateDataImplCopyWith(_$ZLicenseStateDataImpl value,
          $Res Function(_$ZLicenseStateDataImpl) then) =
      __$$ZLicenseStateDataImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<ZLicense> zlicenses});
}

/// @nodoc
class __$$ZLicenseStateDataImplCopyWithImpl<$Res>
    extends _$ZLicenseStateCopyWithImpl<$Res, _$ZLicenseStateDataImpl>
    implements _$$ZLicenseStateDataImplCopyWith<$Res> {
  __$$ZLicenseStateDataImplCopyWithImpl(_$ZLicenseStateDataImpl _value,
      $Res Function(_$ZLicenseStateDataImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? zlicenses = null,
  }) {
    return _then(_$ZLicenseStateDataImpl(
      zlicenses: null == zlicenses
          ? _value._zlicenses
          : zlicenses // ignore: cast_nullable_to_non_nullable
              as List<ZLicense>,
    ));
  }
}

/// @nodoc

class _$ZLicenseStateDataImpl implements ZLicenseStateData {
  const _$ZLicenseStateDataImpl({required final List<ZLicense> zlicenses})
      : _zlicenses = zlicenses;

  final List<ZLicense> _zlicenses;
  @override
  List<ZLicense> get zlicenses {
    if (_zlicenses is EqualUnmodifiableListView) return _zlicenses;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_zlicenses);
  }

  @override
  String toString() {
    return 'ZLicenseState.data(zlicenses: $zlicenses)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZLicenseStateDataImpl &&
            const DeepCollectionEquality()
                .equals(other._zlicenses, _zlicenses));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_zlicenses));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZLicenseStateDataImplCopyWith<_$ZLicenseStateDataImpl> get copyWith =>
      __$$ZLicenseStateDataImplCopyWithImpl<_$ZLicenseStateDataImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ZLicense> zlicenses) data,
    required TResult Function(Exception error) failure,
  }) {
    return data(zlicenses);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ZLicense> zlicenses)? data,
    TResult? Function(Exception error)? failure,
  }) {
    return data?.call(zlicenses);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ZLicense> zlicenses)? data,
    TResult Function(Exception error)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(zlicenses);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ZLicenseStateInital value) initial,
    required TResult Function(ZLicenseStateLoading value) loading,
    required TResult Function(ZLicenseStateData value) data,
    required TResult Function(ZLicenseStateFailure value) failure,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ZLicenseStateInital value)? initial,
    TResult? Function(ZLicenseStateLoading value)? loading,
    TResult? Function(ZLicenseStateData value)? data,
    TResult? Function(ZLicenseStateFailure value)? failure,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ZLicenseStateInital value)? initial,
    TResult Function(ZLicenseStateLoading value)? loading,
    TResult Function(ZLicenseStateData value)? data,
    TResult Function(ZLicenseStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class ZLicenseStateData implements ZLicenseState {
  const factory ZLicenseStateData({required final List<ZLicense> zlicenses}) =
      _$ZLicenseStateDataImpl;

  List<ZLicense> get zlicenses;
  @JsonKey(ignore: true)
  _$$ZLicenseStateDataImplCopyWith<_$ZLicenseStateDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ZLicenseStateFailureImplCopyWith<$Res> {
  factory _$$ZLicenseStateFailureImplCopyWith(_$ZLicenseStateFailureImpl value,
          $Res Function(_$ZLicenseStateFailureImpl) then) =
      __$$ZLicenseStateFailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Exception error});
}

/// @nodoc
class __$$ZLicenseStateFailureImplCopyWithImpl<$Res>
    extends _$ZLicenseStateCopyWithImpl<$Res, _$ZLicenseStateFailureImpl>
    implements _$$ZLicenseStateFailureImplCopyWith<$Res> {
  __$$ZLicenseStateFailureImplCopyWithImpl(_$ZLicenseStateFailureImpl _value,
      $Res Function(_$ZLicenseStateFailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? error = null,
  }) {
    return _then(_$ZLicenseStateFailureImpl(
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as Exception,
    ));
  }
}

/// @nodoc

class _$ZLicenseStateFailureImpl implements ZLicenseStateFailure {
  const _$ZLicenseStateFailureImpl({required this.error});

  @override
  final Exception error;

  @override
  String toString() {
    return 'ZLicenseState.failure(error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZLicenseStateFailureImpl &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(runtimeType, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZLicenseStateFailureImplCopyWith<_$ZLicenseStateFailureImpl>
      get copyWith =>
          __$$ZLicenseStateFailureImplCopyWithImpl<_$ZLicenseStateFailureImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(List<ZLicense> zlicenses) data,
    required TResult Function(Exception error) failure,
  }) {
    return failure(error);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(List<ZLicense> zlicenses)? data,
    TResult? Function(Exception error)? failure,
  }) {
    return failure?.call(error);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(List<ZLicense> zlicenses)? data,
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
    required TResult Function(ZLicenseStateInital value) initial,
    required TResult Function(ZLicenseStateLoading value) loading,
    required TResult Function(ZLicenseStateData value) data,
    required TResult Function(ZLicenseStateFailure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ZLicenseStateInital value)? initial,
    TResult? Function(ZLicenseStateLoading value)? loading,
    TResult? Function(ZLicenseStateData value)? data,
    TResult? Function(ZLicenseStateFailure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ZLicenseStateInital value)? initial,
    TResult Function(ZLicenseStateLoading value)? loading,
    TResult Function(ZLicenseStateData value)? data,
    TResult Function(ZLicenseStateFailure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class ZLicenseStateFailure implements ZLicenseState {
  const factory ZLicenseStateFailure({required final Exception error}) =
      _$ZLicenseStateFailureImpl;

  Exception get error;
  @JsonKey(ignore: true)
  _$$ZLicenseStateFailureImplCopyWith<_$ZLicenseStateFailureImpl>
      get copyWith => throw _privateConstructorUsedError;
}
