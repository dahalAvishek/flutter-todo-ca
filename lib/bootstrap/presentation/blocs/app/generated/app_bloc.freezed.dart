// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkOnBoard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkOnBoard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkOnBoard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckOnBoard value) checkOnBoard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckOnBoard value)? checkOnBoard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckOnBoard value)? checkOnBoard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckOnBoardImplCopyWith<$Res> {
  factory _$$CheckOnBoardImplCopyWith(
          _$CheckOnBoardImpl value, $Res Function(_$CheckOnBoardImpl) then) =
      __$$CheckOnBoardImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckOnBoardImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$CheckOnBoardImpl>
    implements _$$CheckOnBoardImplCopyWith<$Res> {
  __$$CheckOnBoardImplCopyWithImpl(
      _$CheckOnBoardImpl _value, $Res Function(_$CheckOnBoardImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckOnBoardImpl implements _CheckOnBoard {
  const _$CheckOnBoardImpl();

  @override
  String toString() {
    return 'AppEvent.checkOnBoard()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckOnBoardImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkOnBoard,
  }) {
    return checkOnBoard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkOnBoard,
  }) {
    return checkOnBoard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkOnBoard,
    required TResult orElse(),
  }) {
    if (checkOnBoard != null) {
      return checkOnBoard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckOnBoard value) checkOnBoard,
  }) {
    return checkOnBoard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckOnBoard value)? checkOnBoard,
  }) {
    return checkOnBoard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckOnBoard value)? checkOnBoard,
    required TResult orElse(),
  }) {
    if (checkOnBoard != null) {
      return checkOnBoard(this);
    }
    return orElse();
  }
}

abstract class _CheckOnBoard implements AppEvent {
  const factory _CheckOnBoard() = _$CheckOnBoardImpl;
}

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingOnBoard,
    required TResult Function(bool isFirstTime) successOnBoard,
    required TResult Function(String? message) failureOnBoard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingOnBoard,
    TResult? Function(bool isFirstTime)? successOnBoard,
    TResult? Function(String? message)? failureOnBoard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingOnBoard,
    TResult Function(bool isFirstTime)? successOnBoard,
    TResult Function(String? message)? failureOnBoard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingOnBoard value) checkingOnBoard,
    required TResult Function(_SuccessOnBoard value) successOnBoard,
    required TResult Function(_FailureOnBoard value) failureOnBoard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingOnBoard value)? checkingOnBoard,
    TResult? Function(_SuccessOnBoard value)? successOnBoard,
    TResult? Function(_FailureOnBoard value)? failureOnBoard,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingOnBoard value)? checkingOnBoard,
    TResult Function(_SuccessOnBoard value)? successOnBoard,
    TResult Function(_FailureOnBoard value)? failureOnBoard,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AppState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingOnBoard,
    required TResult Function(bool isFirstTime) successOnBoard,
    required TResult Function(String? message) failureOnBoard,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingOnBoard,
    TResult? Function(bool isFirstTime)? successOnBoard,
    TResult? Function(String? message)? failureOnBoard,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingOnBoard,
    TResult Function(bool isFirstTime)? successOnBoard,
    TResult Function(String? message)? failureOnBoard,
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
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingOnBoard value) checkingOnBoard,
    required TResult Function(_SuccessOnBoard value) successOnBoard,
    required TResult Function(_FailureOnBoard value) failureOnBoard,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingOnBoard value)? checkingOnBoard,
    TResult? Function(_SuccessOnBoard value)? successOnBoard,
    TResult? Function(_FailureOnBoard value)? failureOnBoard,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingOnBoard value)? checkingOnBoard,
    TResult Function(_SuccessOnBoard value)? successOnBoard,
    TResult Function(_FailureOnBoard value)? failureOnBoard,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CheckingOnBoardImplCopyWith<$Res> {
  factory _$$CheckingOnBoardImplCopyWith(_$CheckingOnBoardImpl value,
          $Res Function(_$CheckingOnBoardImpl) then) =
      __$$CheckingOnBoardImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckingOnBoardImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$CheckingOnBoardImpl>
    implements _$$CheckingOnBoardImplCopyWith<$Res> {
  __$$CheckingOnBoardImplCopyWithImpl(
      _$CheckingOnBoardImpl _value, $Res Function(_$CheckingOnBoardImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckingOnBoardImpl implements _CheckingOnBoard {
  const _$CheckingOnBoardImpl();

  @override
  String toString() {
    return 'AppState.checkingOnBoard()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckingOnBoardImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingOnBoard,
    required TResult Function(bool isFirstTime) successOnBoard,
    required TResult Function(String? message) failureOnBoard,
  }) {
    return checkingOnBoard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingOnBoard,
    TResult? Function(bool isFirstTime)? successOnBoard,
    TResult? Function(String? message)? failureOnBoard,
  }) {
    return checkingOnBoard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingOnBoard,
    TResult Function(bool isFirstTime)? successOnBoard,
    TResult Function(String? message)? failureOnBoard,
    required TResult orElse(),
  }) {
    if (checkingOnBoard != null) {
      return checkingOnBoard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingOnBoard value) checkingOnBoard,
    required TResult Function(_SuccessOnBoard value) successOnBoard,
    required TResult Function(_FailureOnBoard value) failureOnBoard,
  }) {
    return checkingOnBoard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingOnBoard value)? checkingOnBoard,
    TResult? Function(_SuccessOnBoard value)? successOnBoard,
    TResult? Function(_FailureOnBoard value)? failureOnBoard,
  }) {
    return checkingOnBoard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingOnBoard value)? checkingOnBoard,
    TResult Function(_SuccessOnBoard value)? successOnBoard,
    TResult Function(_FailureOnBoard value)? failureOnBoard,
    required TResult orElse(),
  }) {
    if (checkingOnBoard != null) {
      return checkingOnBoard(this);
    }
    return orElse();
  }
}

abstract class _CheckingOnBoard implements AppState {
  const factory _CheckingOnBoard() = _$CheckingOnBoardImpl;
}

/// @nodoc
abstract class _$$SuccessOnBoardImplCopyWith<$Res> {
  factory _$$SuccessOnBoardImplCopyWith(_$SuccessOnBoardImpl value,
          $Res Function(_$SuccessOnBoardImpl) then) =
      __$$SuccessOnBoardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({bool isFirstTime});
}

/// @nodoc
class __$$SuccessOnBoardImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$SuccessOnBoardImpl>
    implements _$$SuccessOnBoardImplCopyWith<$Res> {
  __$$SuccessOnBoardImplCopyWithImpl(
      _$SuccessOnBoardImpl _value, $Res Function(_$SuccessOnBoardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFirstTime = null,
  }) {
    return _then(_$SuccessOnBoardImpl(
      isFirstTime: null == isFirstTime
          ? _value.isFirstTime
          : isFirstTime // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$SuccessOnBoardImpl implements _SuccessOnBoard {
  const _$SuccessOnBoardImpl({required this.isFirstTime});

  @override
  final bool isFirstTime;

  @override
  String toString() {
    return 'AppState.successOnBoard(isFirstTime: $isFirstTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessOnBoardImpl &&
            (identical(other.isFirstTime, isFirstTime) ||
                other.isFirstTime == isFirstTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFirstTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessOnBoardImplCopyWith<_$SuccessOnBoardImpl> get copyWith =>
      __$$SuccessOnBoardImplCopyWithImpl<_$SuccessOnBoardImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingOnBoard,
    required TResult Function(bool isFirstTime) successOnBoard,
    required TResult Function(String? message) failureOnBoard,
  }) {
    return successOnBoard(isFirstTime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingOnBoard,
    TResult? Function(bool isFirstTime)? successOnBoard,
    TResult? Function(String? message)? failureOnBoard,
  }) {
    return successOnBoard?.call(isFirstTime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingOnBoard,
    TResult Function(bool isFirstTime)? successOnBoard,
    TResult Function(String? message)? failureOnBoard,
    required TResult orElse(),
  }) {
    if (successOnBoard != null) {
      return successOnBoard(isFirstTime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingOnBoard value) checkingOnBoard,
    required TResult Function(_SuccessOnBoard value) successOnBoard,
    required TResult Function(_FailureOnBoard value) failureOnBoard,
  }) {
    return successOnBoard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingOnBoard value)? checkingOnBoard,
    TResult? Function(_SuccessOnBoard value)? successOnBoard,
    TResult? Function(_FailureOnBoard value)? failureOnBoard,
  }) {
    return successOnBoard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingOnBoard value)? checkingOnBoard,
    TResult Function(_SuccessOnBoard value)? successOnBoard,
    TResult Function(_FailureOnBoard value)? failureOnBoard,
    required TResult orElse(),
  }) {
    if (successOnBoard != null) {
      return successOnBoard(this);
    }
    return orElse();
  }
}

abstract class _SuccessOnBoard implements AppState {
  const factory _SuccessOnBoard({required final bool isFirstTime}) =
      _$SuccessOnBoardImpl;

  bool get isFirstTime;
  @JsonKey(ignore: true)
  _$$SuccessOnBoardImplCopyWith<_$SuccessOnBoardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureOnBoardImplCopyWith<$Res> {
  factory _$$FailureOnBoardImplCopyWith(_$FailureOnBoardImpl value,
          $Res Function(_$FailureOnBoardImpl) then) =
      __$$FailureOnBoardImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String? message});
}

/// @nodoc
class __$$FailureOnBoardImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$FailureOnBoardImpl>
    implements _$$FailureOnBoardImplCopyWith<$Res> {
  __$$FailureOnBoardImplCopyWithImpl(
      _$FailureOnBoardImpl _value, $Res Function(_$FailureOnBoardImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$FailureOnBoardImpl(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$FailureOnBoardImpl implements _FailureOnBoard {
  const _$FailureOnBoardImpl({this.message});

  @override
  final String? message;

  @override
  String toString() {
    return 'AppState.failureOnBoard(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureOnBoardImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureOnBoardImplCopyWith<_$FailureOnBoardImpl> get copyWith =>
      __$$FailureOnBoardImplCopyWithImpl<_$FailureOnBoardImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingOnBoard,
    required TResult Function(bool isFirstTime) successOnBoard,
    required TResult Function(String? message) failureOnBoard,
  }) {
    return failureOnBoard(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingOnBoard,
    TResult? Function(bool isFirstTime)? successOnBoard,
    TResult? Function(String? message)? failureOnBoard,
  }) {
    return failureOnBoard?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingOnBoard,
    TResult Function(bool isFirstTime)? successOnBoard,
    TResult Function(String? message)? failureOnBoard,
    required TResult orElse(),
  }) {
    if (failureOnBoard != null) {
      return failureOnBoard(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingOnBoard value) checkingOnBoard,
    required TResult Function(_SuccessOnBoard value) successOnBoard,
    required TResult Function(_FailureOnBoard value) failureOnBoard,
  }) {
    return failureOnBoard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingOnBoard value)? checkingOnBoard,
    TResult? Function(_SuccessOnBoard value)? successOnBoard,
    TResult? Function(_FailureOnBoard value)? failureOnBoard,
  }) {
    return failureOnBoard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingOnBoard value)? checkingOnBoard,
    TResult Function(_SuccessOnBoard value)? successOnBoard,
    TResult Function(_FailureOnBoard value)? failureOnBoard,
    required TResult orElse(),
  }) {
    if (failureOnBoard != null) {
      return failureOnBoard(this);
    }
    return orElse();
  }
}

abstract class _FailureOnBoard implements AppState {
  const factory _FailureOnBoard({final String? message}) = _$FailureOnBoardImpl;

  String? get message;
  @JsonKey(ignore: true)
  _$$FailureOnBoardImplCopyWith<_$FailureOnBoardImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
