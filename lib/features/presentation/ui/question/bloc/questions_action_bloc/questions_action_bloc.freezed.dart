// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'questions_action_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$QuestionsActionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextPage,
    required TResult Function() previousPage,
    required TResult Function(int numberPage) JumpPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? nextPage,
    TResult? Function()? previousPage,
    TResult? Function(int numberPage)? JumpPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextPage,
    TResult Function()? previousPage,
    TResult Function(int numberPage)? JumpPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionsActionEventNextPage value) nextPage,
    required TResult Function(QuestionsActionEventPreviousPage value)
        previousPage,
    required TResult Function(QuestionsActionEventJumpPage value) JumpPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionsActionEventNextPage value)? nextPage,
    TResult? Function(QuestionsActionEventPreviousPage value)? previousPage,
    TResult? Function(QuestionsActionEventJumpPage value)? JumpPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionsActionEventNextPage value)? nextPage,
    TResult Function(QuestionsActionEventPreviousPage value)? previousPage,
    TResult Function(QuestionsActionEventJumpPage value)? JumpPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionsActionEventCopyWith<$Res> {
  factory $QuestionsActionEventCopyWith(QuestionsActionEvent value,
          $Res Function(QuestionsActionEvent) then) =
      _$QuestionsActionEventCopyWithImpl<$Res, QuestionsActionEvent>;
}

/// @nodoc
class _$QuestionsActionEventCopyWithImpl<$Res,
        $Val extends QuestionsActionEvent>
    implements $QuestionsActionEventCopyWith<$Res> {
  _$QuestionsActionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$QuestionsActionEventNextPageImplCopyWith<$Res> {
  factory _$$QuestionsActionEventNextPageImplCopyWith(
          _$QuestionsActionEventNextPageImpl value,
          $Res Function(_$QuestionsActionEventNextPageImpl) then) =
      __$$QuestionsActionEventNextPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuestionsActionEventNextPageImplCopyWithImpl<$Res>
    extends _$QuestionsActionEventCopyWithImpl<$Res,
        _$QuestionsActionEventNextPageImpl>
    implements _$$QuestionsActionEventNextPageImplCopyWith<$Res> {
  __$$QuestionsActionEventNextPageImplCopyWithImpl(
      _$QuestionsActionEventNextPageImpl _value,
      $Res Function(_$QuestionsActionEventNextPageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuestionsActionEventNextPageImpl
    implements QuestionsActionEventNextPage {
  const _$QuestionsActionEventNextPageImpl();

  @override
  String toString() {
    return 'QuestionsActionEvent.nextPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionsActionEventNextPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextPage,
    required TResult Function() previousPage,
    required TResult Function(int numberPage) JumpPage,
  }) {
    return nextPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? nextPage,
    TResult? Function()? previousPage,
    TResult? Function(int numberPage)? JumpPage,
  }) {
    return nextPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextPage,
    TResult Function()? previousPage,
    TResult Function(int numberPage)? JumpPage,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionsActionEventNextPage value) nextPage,
    required TResult Function(QuestionsActionEventPreviousPage value)
        previousPage,
    required TResult Function(QuestionsActionEventJumpPage value) JumpPage,
  }) {
    return nextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionsActionEventNextPage value)? nextPage,
    TResult? Function(QuestionsActionEventPreviousPage value)? previousPage,
    TResult? Function(QuestionsActionEventJumpPage value)? JumpPage,
  }) {
    return nextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionsActionEventNextPage value)? nextPage,
    TResult Function(QuestionsActionEventPreviousPage value)? previousPage,
    TResult Function(QuestionsActionEventJumpPage value)? JumpPage,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage(this);
    }
    return orElse();
  }
}

abstract class QuestionsActionEventNextPage implements QuestionsActionEvent {
  const factory QuestionsActionEventNextPage() =
      _$QuestionsActionEventNextPageImpl;
}

/// @nodoc
abstract class _$$QuestionsActionEventPreviousPageImplCopyWith<$Res> {
  factory _$$QuestionsActionEventPreviousPageImplCopyWith(
          _$QuestionsActionEventPreviousPageImpl value,
          $Res Function(_$QuestionsActionEventPreviousPageImpl) then) =
      __$$QuestionsActionEventPreviousPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$QuestionsActionEventPreviousPageImplCopyWithImpl<$Res>
    extends _$QuestionsActionEventCopyWithImpl<$Res,
        _$QuestionsActionEventPreviousPageImpl>
    implements _$$QuestionsActionEventPreviousPageImplCopyWith<$Res> {
  __$$QuestionsActionEventPreviousPageImplCopyWithImpl(
      _$QuestionsActionEventPreviousPageImpl _value,
      $Res Function(_$QuestionsActionEventPreviousPageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$QuestionsActionEventPreviousPageImpl
    implements QuestionsActionEventPreviousPage {
  const _$QuestionsActionEventPreviousPageImpl();

  @override
  String toString() {
    return 'QuestionsActionEvent.previousPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionsActionEventPreviousPageImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextPage,
    required TResult Function() previousPage,
    required TResult Function(int numberPage) JumpPage,
  }) {
    return previousPage();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? nextPage,
    TResult? Function()? previousPage,
    TResult? Function(int numberPage)? JumpPage,
  }) {
    return previousPage?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextPage,
    TResult Function()? previousPage,
    TResult Function(int numberPage)? JumpPage,
    required TResult orElse(),
  }) {
    if (previousPage != null) {
      return previousPage();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionsActionEventNextPage value) nextPage,
    required TResult Function(QuestionsActionEventPreviousPage value)
        previousPage,
    required TResult Function(QuestionsActionEventJumpPage value) JumpPage,
  }) {
    return previousPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionsActionEventNextPage value)? nextPage,
    TResult? Function(QuestionsActionEventPreviousPage value)? previousPage,
    TResult? Function(QuestionsActionEventJumpPage value)? JumpPage,
  }) {
    return previousPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionsActionEventNextPage value)? nextPage,
    TResult Function(QuestionsActionEventPreviousPage value)? previousPage,
    TResult Function(QuestionsActionEventJumpPage value)? JumpPage,
    required TResult orElse(),
  }) {
    if (previousPage != null) {
      return previousPage(this);
    }
    return orElse();
  }
}

abstract class QuestionsActionEventPreviousPage
    implements QuestionsActionEvent {
  const factory QuestionsActionEventPreviousPage() =
      _$QuestionsActionEventPreviousPageImpl;
}

/// @nodoc
abstract class _$$QuestionsActionEventJumpPageImplCopyWith<$Res> {
  factory _$$QuestionsActionEventJumpPageImplCopyWith(
          _$QuestionsActionEventJumpPageImpl value,
          $Res Function(_$QuestionsActionEventJumpPageImpl) then) =
      __$$QuestionsActionEventJumpPageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int numberPage});
}

/// @nodoc
class __$$QuestionsActionEventJumpPageImplCopyWithImpl<$Res>
    extends _$QuestionsActionEventCopyWithImpl<$Res,
        _$QuestionsActionEventJumpPageImpl>
    implements _$$QuestionsActionEventJumpPageImplCopyWith<$Res> {
  __$$QuestionsActionEventJumpPageImplCopyWithImpl(
      _$QuestionsActionEventJumpPageImpl _value,
      $Res Function(_$QuestionsActionEventJumpPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberPage = null,
  }) {
    return _then(_$QuestionsActionEventJumpPageImpl(
      null == numberPage
          ? _value.numberPage
          : numberPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$QuestionsActionEventJumpPageImpl
    implements QuestionsActionEventJumpPage {
  const _$QuestionsActionEventJumpPageImpl(this.numberPage);

  @override
  final int numberPage;

  @override
  String toString() {
    return 'QuestionsActionEvent.JumpPage(numberPage: $numberPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionsActionEventJumpPageImpl &&
            (identical(other.numberPage, numberPage) ||
                other.numberPage == numberPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, numberPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionsActionEventJumpPageImplCopyWith<
          _$QuestionsActionEventJumpPageImpl>
      get copyWith => __$$QuestionsActionEventJumpPageImplCopyWithImpl<
          _$QuestionsActionEventJumpPageImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() nextPage,
    required TResult Function() previousPage,
    required TResult Function(int numberPage) JumpPage,
  }) {
    return JumpPage(numberPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? nextPage,
    TResult? Function()? previousPage,
    TResult? Function(int numberPage)? JumpPage,
  }) {
    return JumpPage?.call(numberPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? nextPage,
    TResult Function()? previousPage,
    TResult Function(int numberPage)? JumpPage,
    required TResult orElse(),
  }) {
    if (JumpPage != null) {
      return JumpPage(numberPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionsActionEventNextPage value) nextPage,
    required TResult Function(QuestionsActionEventPreviousPage value)
        previousPage,
    required TResult Function(QuestionsActionEventJumpPage value) JumpPage,
  }) {
    return JumpPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionsActionEventNextPage value)? nextPage,
    TResult? Function(QuestionsActionEventPreviousPage value)? previousPage,
    TResult? Function(QuestionsActionEventJumpPage value)? JumpPage,
  }) {
    return JumpPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionsActionEventNextPage value)? nextPage,
    TResult Function(QuestionsActionEventPreviousPage value)? previousPage,
    TResult Function(QuestionsActionEventJumpPage value)? JumpPage,
    required TResult orElse(),
  }) {
    if (JumpPage != null) {
      return JumpPage(this);
    }
    return orElse();
  }
}

abstract class QuestionsActionEventJumpPage implements QuestionsActionEvent {
  const factory QuestionsActionEventJumpPage(final int numberPage) =
      _$QuestionsActionEventJumpPageImpl;

  int get numberPage;
  @JsonKey(ignore: true)
  _$$QuestionsActionEventJumpPageImplCopyWith<
          _$QuestionsActionEventJumpPageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$QuestionsActionState {
  int get currentPage => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentPage) initial,
    required TResult Function(int currentPage) pageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentPage)? initial,
    TResult? Function(int currentPage)? pageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentPage)? initial,
    TResult Function(int currentPage)? pageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionsActionStateInitial value) initial,
    required TResult Function(QuestionsActionStatePageChanged value)
        pageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionsActionStateInitial value)? initial,
    TResult? Function(QuestionsActionStatePageChanged value)? pageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionsActionStateInitial value)? initial,
    TResult Function(QuestionsActionStatePageChanged value)? pageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $QuestionsActionStateCopyWith<QuestionsActionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $QuestionsActionStateCopyWith<$Res> {
  factory $QuestionsActionStateCopyWith(QuestionsActionState value,
          $Res Function(QuestionsActionState) then) =
      _$QuestionsActionStateCopyWithImpl<$Res, QuestionsActionState>;
  @useResult
  $Res call({int currentPage});
}

/// @nodoc
class _$QuestionsActionStateCopyWithImpl<$Res,
        $Val extends QuestionsActionState>
    implements $QuestionsActionStateCopyWith<$Res> {
  _$QuestionsActionStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$QuestionsActionStateInitialImplCopyWith<$Res>
    implements $QuestionsActionStateCopyWith<$Res> {
  factory _$$QuestionsActionStateInitialImplCopyWith(
          _$QuestionsActionStateInitialImpl value,
          $Res Function(_$QuestionsActionStateInitialImpl) then) =
      __$$QuestionsActionStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentPage});
}

/// @nodoc
class __$$QuestionsActionStateInitialImplCopyWithImpl<$Res>
    extends _$QuestionsActionStateCopyWithImpl<$Res,
        _$QuestionsActionStateInitialImpl>
    implements _$$QuestionsActionStateInitialImplCopyWith<$Res> {
  __$$QuestionsActionStateInitialImplCopyWithImpl(
      _$QuestionsActionStateInitialImpl _value,
      $Res Function(_$QuestionsActionStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
  }) {
    return _then(_$QuestionsActionStateInitialImpl(
      null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$QuestionsActionStateInitialImpl implements QuestionsActionStateInitial {
  const _$QuestionsActionStateInitialImpl(this.currentPage);

  @override
  final int currentPage;

  @override
  String toString() {
    return 'QuestionsActionState.initial(currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionsActionStateInitialImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionsActionStateInitialImplCopyWith<_$QuestionsActionStateInitialImpl>
      get copyWith => __$$QuestionsActionStateInitialImplCopyWithImpl<
          _$QuestionsActionStateInitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentPage) initial,
    required TResult Function(int currentPage) pageChanged,
  }) {
    return initial(currentPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentPage)? initial,
    TResult? Function(int currentPage)? pageChanged,
  }) {
    return initial?.call(currentPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentPage)? initial,
    TResult Function(int currentPage)? pageChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(currentPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionsActionStateInitial value) initial,
    required TResult Function(QuestionsActionStatePageChanged value)
        pageChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionsActionStateInitial value)? initial,
    TResult? Function(QuestionsActionStatePageChanged value)? pageChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionsActionStateInitial value)? initial,
    TResult Function(QuestionsActionStatePageChanged value)? pageChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class QuestionsActionStateInitial implements QuestionsActionState {
  const factory QuestionsActionStateInitial(final int currentPage) =
      _$QuestionsActionStateInitialImpl;

  @override
  int get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$QuestionsActionStateInitialImplCopyWith<_$QuestionsActionStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$QuestionsActionStatePageChangedImplCopyWith<$Res>
    implements $QuestionsActionStateCopyWith<$Res> {
  factory _$$QuestionsActionStatePageChangedImplCopyWith(
          _$QuestionsActionStatePageChangedImpl value,
          $Res Function(_$QuestionsActionStatePageChangedImpl) then) =
      __$$QuestionsActionStatePageChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentPage});
}

/// @nodoc
class __$$QuestionsActionStatePageChangedImplCopyWithImpl<$Res>
    extends _$QuestionsActionStateCopyWithImpl<$Res,
        _$QuestionsActionStatePageChangedImpl>
    implements _$$QuestionsActionStatePageChangedImplCopyWith<$Res> {
  __$$QuestionsActionStatePageChangedImplCopyWithImpl(
      _$QuestionsActionStatePageChangedImpl _value,
      $Res Function(_$QuestionsActionStatePageChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
  }) {
    return _then(_$QuestionsActionStatePageChangedImpl(
      null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$QuestionsActionStatePageChangedImpl
    implements QuestionsActionStatePageChanged {
  const _$QuestionsActionStatePageChangedImpl(this.currentPage);

  @override
  final int currentPage;

  @override
  String toString() {
    return 'QuestionsActionState.pageChanged(currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$QuestionsActionStatePageChangedImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$QuestionsActionStatePageChangedImplCopyWith<
          _$QuestionsActionStatePageChangedImpl>
      get copyWith => __$$QuestionsActionStatePageChangedImplCopyWithImpl<
          _$QuestionsActionStatePageChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int currentPage) initial,
    required TResult Function(int currentPage) pageChanged,
  }) {
    return pageChanged(currentPage);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int currentPage)? initial,
    TResult? Function(int currentPage)? pageChanged,
  }) {
    return pageChanged?.call(currentPage);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int currentPage)? initial,
    TResult Function(int currentPage)? pageChanged,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(currentPage);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(QuestionsActionStateInitial value) initial,
    required TResult Function(QuestionsActionStatePageChanged value)
        pageChanged,
  }) {
    return pageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(QuestionsActionStateInitial value)? initial,
    TResult? Function(QuestionsActionStatePageChanged value)? pageChanged,
  }) {
    return pageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(QuestionsActionStateInitial value)? initial,
    TResult Function(QuestionsActionStatePageChanged value)? pageChanged,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(this);
    }
    return orElse();
  }
}

abstract class QuestionsActionStatePageChanged implements QuestionsActionState {
  const factory QuestionsActionStatePageChanged(final int currentPage) =
      _$QuestionsActionStatePageChangedImpl;

  @override
  int get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$QuestionsActionStatePageChangedImplCopyWith<
          _$QuestionsActionStatePageChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
