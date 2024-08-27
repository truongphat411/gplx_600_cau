// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_questions_action_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReviewQuestionsActionEvent {
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
    required TResult Function(ReviewQuestionsActionEventNextPage value)
        nextPage,
    required TResult Function(ReviewQuestionsActionEventPreviousPage value)
        previousPage,
    required TResult Function(ReviewQuestionsActionEventJumpPage value)
        JumpPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReviewQuestionsActionEventNextPage value)? nextPage,
    TResult? Function(ReviewQuestionsActionEventPreviousPage value)?
        previousPage,
    TResult? Function(ReviewQuestionsActionEventJumpPage value)? JumpPage,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReviewQuestionsActionEventNextPage value)? nextPage,
    TResult Function(ReviewQuestionsActionEventPreviousPage value)?
        previousPage,
    TResult Function(ReviewQuestionsActionEventJumpPage value)? JumpPage,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewQuestionsActionEventCopyWith<$Res> {
  factory $ReviewQuestionsActionEventCopyWith(ReviewQuestionsActionEvent value,
          $Res Function(ReviewQuestionsActionEvent) then) =
      _$ReviewQuestionsActionEventCopyWithImpl<$Res,
          ReviewQuestionsActionEvent>;
}

/// @nodoc
class _$ReviewQuestionsActionEventCopyWithImpl<$Res,
        $Val extends ReviewQuestionsActionEvent>
    implements $ReviewQuestionsActionEventCopyWith<$Res> {
  _$ReviewQuestionsActionEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ReviewQuestionsActionEventNextPageImplCopyWith<$Res> {
  factory _$$ReviewQuestionsActionEventNextPageImplCopyWith(
          _$ReviewQuestionsActionEventNextPageImpl value,
          $Res Function(_$ReviewQuestionsActionEventNextPageImpl) then) =
      __$$ReviewQuestionsActionEventNextPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReviewQuestionsActionEventNextPageImplCopyWithImpl<$Res>
    extends _$ReviewQuestionsActionEventCopyWithImpl<$Res,
        _$ReviewQuestionsActionEventNextPageImpl>
    implements _$$ReviewQuestionsActionEventNextPageImplCopyWith<$Res> {
  __$$ReviewQuestionsActionEventNextPageImplCopyWithImpl(
      _$ReviewQuestionsActionEventNextPageImpl _value,
      $Res Function(_$ReviewQuestionsActionEventNextPageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReviewQuestionsActionEventNextPageImpl
    implements ReviewQuestionsActionEventNextPage {
  const _$ReviewQuestionsActionEventNextPageImpl();

  @override
  String toString() {
    return 'ReviewQuestionsActionEvent.nextPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewQuestionsActionEventNextPageImpl);
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
    required TResult Function(ReviewQuestionsActionEventNextPage value)
        nextPage,
    required TResult Function(ReviewQuestionsActionEventPreviousPage value)
        previousPage,
    required TResult Function(ReviewQuestionsActionEventJumpPage value)
        JumpPage,
  }) {
    return nextPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReviewQuestionsActionEventNextPage value)? nextPage,
    TResult? Function(ReviewQuestionsActionEventPreviousPage value)?
        previousPage,
    TResult? Function(ReviewQuestionsActionEventJumpPage value)? JumpPage,
  }) {
    return nextPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReviewQuestionsActionEventNextPage value)? nextPage,
    TResult Function(ReviewQuestionsActionEventPreviousPage value)?
        previousPage,
    TResult Function(ReviewQuestionsActionEventJumpPage value)? JumpPage,
    required TResult orElse(),
  }) {
    if (nextPage != null) {
      return nextPage(this);
    }
    return orElse();
  }
}

abstract class ReviewQuestionsActionEventNextPage
    implements ReviewQuestionsActionEvent {
  const factory ReviewQuestionsActionEventNextPage() =
      _$ReviewQuestionsActionEventNextPageImpl;
}

/// @nodoc
abstract class _$$ReviewQuestionsActionEventPreviousPageImplCopyWith<$Res> {
  factory _$$ReviewQuestionsActionEventPreviousPageImplCopyWith(
          _$ReviewQuestionsActionEventPreviousPageImpl value,
          $Res Function(_$ReviewQuestionsActionEventPreviousPageImpl) then) =
      __$$ReviewQuestionsActionEventPreviousPageImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ReviewQuestionsActionEventPreviousPageImplCopyWithImpl<$Res>
    extends _$ReviewQuestionsActionEventCopyWithImpl<$Res,
        _$ReviewQuestionsActionEventPreviousPageImpl>
    implements _$$ReviewQuestionsActionEventPreviousPageImplCopyWith<$Res> {
  __$$ReviewQuestionsActionEventPreviousPageImplCopyWithImpl(
      _$ReviewQuestionsActionEventPreviousPageImpl _value,
      $Res Function(_$ReviewQuestionsActionEventPreviousPageImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ReviewQuestionsActionEventPreviousPageImpl
    implements ReviewQuestionsActionEventPreviousPage {
  const _$ReviewQuestionsActionEventPreviousPageImpl();

  @override
  String toString() {
    return 'ReviewQuestionsActionEvent.previousPage()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewQuestionsActionEventPreviousPageImpl);
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
    required TResult Function(ReviewQuestionsActionEventNextPage value)
        nextPage,
    required TResult Function(ReviewQuestionsActionEventPreviousPage value)
        previousPage,
    required TResult Function(ReviewQuestionsActionEventJumpPage value)
        JumpPage,
  }) {
    return previousPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReviewQuestionsActionEventNextPage value)? nextPage,
    TResult? Function(ReviewQuestionsActionEventPreviousPage value)?
        previousPage,
    TResult? Function(ReviewQuestionsActionEventJumpPage value)? JumpPage,
  }) {
    return previousPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReviewQuestionsActionEventNextPage value)? nextPage,
    TResult Function(ReviewQuestionsActionEventPreviousPage value)?
        previousPage,
    TResult Function(ReviewQuestionsActionEventJumpPage value)? JumpPage,
    required TResult orElse(),
  }) {
    if (previousPage != null) {
      return previousPage(this);
    }
    return orElse();
  }
}

abstract class ReviewQuestionsActionEventPreviousPage
    implements ReviewQuestionsActionEvent {
  const factory ReviewQuestionsActionEventPreviousPage() =
      _$ReviewQuestionsActionEventPreviousPageImpl;
}

/// @nodoc
abstract class _$$ReviewQuestionsActionEventJumpPageImplCopyWith<$Res> {
  factory _$$ReviewQuestionsActionEventJumpPageImplCopyWith(
          _$ReviewQuestionsActionEventJumpPageImpl value,
          $Res Function(_$ReviewQuestionsActionEventJumpPageImpl) then) =
      __$$ReviewQuestionsActionEventJumpPageImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int numberPage});
}

/// @nodoc
class __$$ReviewQuestionsActionEventJumpPageImplCopyWithImpl<$Res>
    extends _$ReviewQuestionsActionEventCopyWithImpl<$Res,
        _$ReviewQuestionsActionEventJumpPageImpl>
    implements _$$ReviewQuestionsActionEventJumpPageImplCopyWith<$Res> {
  __$$ReviewQuestionsActionEventJumpPageImplCopyWithImpl(
      _$ReviewQuestionsActionEventJumpPageImpl _value,
      $Res Function(_$ReviewQuestionsActionEventJumpPageImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? numberPage = null,
  }) {
    return _then(_$ReviewQuestionsActionEventJumpPageImpl(
      null == numberPage
          ? _value.numberPage
          : numberPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReviewQuestionsActionEventJumpPageImpl
    implements ReviewQuestionsActionEventJumpPage {
  const _$ReviewQuestionsActionEventJumpPageImpl(this.numberPage);

  @override
  final int numberPage;

  @override
  String toString() {
    return 'ReviewQuestionsActionEvent.JumpPage(numberPage: $numberPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewQuestionsActionEventJumpPageImpl &&
            (identical(other.numberPage, numberPage) ||
                other.numberPage == numberPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, numberPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewQuestionsActionEventJumpPageImplCopyWith<
          _$ReviewQuestionsActionEventJumpPageImpl>
      get copyWith => __$$ReviewQuestionsActionEventJumpPageImplCopyWithImpl<
          _$ReviewQuestionsActionEventJumpPageImpl>(this, _$identity);

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
    required TResult Function(ReviewQuestionsActionEventNextPage value)
        nextPage,
    required TResult Function(ReviewQuestionsActionEventPreviousPage value)
        previousPage,
    required TResult Function(ReviewQuestionsActionEventJumpPage value)
        JumpPage,
  }) {
    return JumpPage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReviewQuestionsActionEventNextPage value)? nextPage,
    TResult? Function(ReviewQuestionsActionEventPreviousPage value)?
        previousPage,
    TResult? Function(ReviewQuestionsActionEventJumpPage value)? JumpPage,
  }) {
    return JumpPage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReviewQuestionsActionEventNextPage value)? nextPage,
    TResult Function(ReviewQuestionsActionEventPreviousPage value)?
        previousPage,
    TResult Function(ReviewQuestionsActionEventJumpPage value)? JumpPage,
    required TResult orElse(),
  }) {
    if (JumpPage != null) {
      return JumpPage(this);
    }
    return orElse();
  }
}

abstract class ReviewQuestionsActionEventJumpPage
    implements ReviewQuestionsActionEvent {
  const factory ReviewQuestionsActionEventJumpPage(final int numberPage) =
      _$ReviewQuestionsActionEventJumpPageImpl;

  int get numberPage;
  @JsonKey(ignore: true)
  _$$ReviewQuestionsActionEventJumpPageImplCopyWith<
          _$ReviewQuestionsActionEventJumpPageImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReviewQuestionsActionState {
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
    required TResult Function(ReviewQuestionsActionStateInitial value) initial,
    required TResult Function(ReviewQuestionsActionStatePageChanged value)
        pageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReviewQuestionsActionStateInitial value)? initial,
    TResult? Function(ReviewQuestionsActionStatePageChanged value)? pageChanged,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReviewQuestionsActionStateInitial value)? initial,
    TResult Function(ReviewQuestionsActionStatePageChanged value)? pageChanged,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewQuestionsActionStateCopyWith<ReviewQuestionsActionState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewQuestionsActionStateCopyWith<$Res> {
  factory $ReviewQuestionsActionStateCopyWith(ReviewQuestionsActionState value,
          $Res Function(ReviewQuestionsActionState) then) =
      _$ReviewQuestionsActionStateCopyWithImpl<$Res,
          ReviewQuestionsActionState>;
  @useResult
  $Res call({int currentPage});
}

/// @nodoc
class _$ReviewQuestionsActionStateCopyWithImpl<$Res,
        $Val extends ReviewQuestionsActionState>
    implements $ReviewQuestionsActionStateCopyWith<$Res> {
  _$ReviewQuestionsActionStateCopyWithImpl(this._value, this._then);

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
abstract class _$$ReviewQuestionsActionStateInitialImplCopyWith<$Res>
    implements $ReviewQuestionsActionStateCopyWith<$Res> {
  factory _$$ReviewQuestionsActionStateInitialImplCopyWith(
          _$ReviewQuestionsActionStateInitialImpl value,
          $Res Function(_$ReviewQuestionsActionStateInitialImpl) then) =
      __$$ReviewQuestionsActionStateInitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentPage});
}

/// @nodoc
class __$$ReviewQuestionsActionStateInitialImplCopyWithImpl<$Res>
    extends _$ReviewQuestionsActionStateCopyWithImpl<$Res,
        _$ReviewQuestionsActionStateInitialImpl>
    implements _$$ReviewQuestionsActionStateInitialImplCopyWith<$Res> {
  __$$ReviewQuestionsActionStateInitialImplCopyWithImpl(
      _$ReviewQuestionsActionStateInitialImpl _value,
      $Res Function(_$ReviewQuestionsActionStateInitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
  }) {
    return _then(_$ReviewQuestionsActionStateInitialImpl(
      null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReviewQuestionsActionStateInitialImpl
    implements ReviewQuestionsActionStateInitial {
  const _$ReviewQuestionsActionStateInitialImpl(this.currentPage);

  @override
  final int currentPage;

  @override
  String toString() {
    return 'ReviewQuestionsActionState.initial(currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewQuestionsActionStateInitialImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewQuestionsActionStateInitialImplCopyWith<
          _$ReviewQuestionsActionStateInitialImpl>
      get copyWith => __$$ReviewQuestionsActionStateInitialImplCopyWithImpl<
          _$ReviewQuestionsActionStateInitialImpl>(this, _$identity);

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
    required TResult Function(ReviewQuestionsActionStateInitial value) initial,
    required TResult Function(ReviewQuestionsActionStatePageChanged value)
        pageChanged,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReviewQuestionsActionStateInitial value)? initial,
    TResult? Function(ReviewQuestionsActionStatePageChanged value)? pageChanged,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReviewQuestionsActionStateInitial value)? initial,
    TResult Function(ReviewQuestionsActionStatePageChanged value)? pageChanged,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class ReviewQuestionsActionStateInitial
    implements ReviewQuestionsActionState {
  const factory ReviewQuestionsActionStateInitial(final int currentPage) =
      _$ReviewQuestionsActionStateInitialImpl;

  @override
  int get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$ReviewQuestionsActionStateInitialImplCopyWith<
          _$ReviewQuestionsActionStateInitialImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ReviewQuestionsActionStatePageChangedImplCopyWith<$Res>
    implements $ReviewQuestionsActionStateCopyWith<$Res> {
  factory _$$ReviewQuestionsActionStatePageChangedImplCopyWith(
          _$ReviewQuestionsActionStatePageChangedImpl value,
          $Res Function(_$ReviewQuestionsActionStatePageChangedImpl) then) =
      __$$ReviewQuestionsActionStatePageChangedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentPage});
}

/// @nodoc
class __$$ReviewQuestionsActionStatePageChangedImplCopyWithImpl<$Res>
    extends _$ReviewQuestionsActionStateCopyWithImpl<$Res,
        _$ReviewQuestionsActionStatePageChangedImpl>
    implements _$$ReviewQuestionsActionStatePageChangedImplCopyWith<$Res> {
  __$$ReviewQuestionsActionStatePageChangedImplCopyWithImpl(
      _$ReviewQuestionsActionStatePageChangedImpl _value,
      $Res Function(_$ReviewQuestionsActionStatePageChangedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
  }) {
    return _then(_$ReviewQuestionsActionStatePageChangedImpl(
      null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$ReviewQuestionsActionStatePageChangedImpl
    implements ReviewQuestionsActionStatePageChanged {
  const _$ReviewQuestionsActionStatePageChangedImpl(this.currentPage);

  @override
  final int currentPage;

  @override
  String toString() {
    return 'ReviewQuestionsActionState.pageChanged(currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewQuestionsActionStatePageChangedImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewQuestionsActionStatePageChangedImplCopyWith<
          _$ReviewQuestionsActionStatePageChangedImpl>
      get copyWith => __$$ReviewQuestionsActionStatePageChangedImplCopyWithImpl<
          _$ReviewQuestionsActionStatePageChangedImpl>(this, _$identity);

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
    required TResult Function(ReviewQuestionsActionStateInitial value) initial,
    required TResult Function(ReviewQuestionsActionStatePageChanged value)
        pageChanged,
  }) {
    return pageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(ReviewQuestionsActionStateInitial value)? initial,
    TResult? Function(ReviewQuestionsActionStatePageChanged value)? pageChanged,
  }) {
    return pageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ReviewQuestionsActionStateInitial value)? initial,
    TResult Function(ReviewQuestionsActionStatePageChanged value)? pageChanged,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(this);
    }
    return orElse();
  }
}

abstract class ReviewQuestionsActionStatePageChanged
    implements ReviewQuestionsActionState {
  const factory ReviewQuestionsActionStatePageChanged(final int currentPage) =
      _$ReviewQuestionsActionStatePageChangedImpl;

  @override
  int get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$ReviewQuestionsActionStatePageChangedImplCopyWith<
          _$ReviewQuestionsActionStatePageChangedImpl>
      get copyWith => throw _privateConstructorUsedError;
}
