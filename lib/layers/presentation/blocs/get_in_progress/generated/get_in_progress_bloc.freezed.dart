// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../get_in_progress_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetInProgressEvent {
  GetTasksParams get params => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetTasksParams params) attempt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetTasksParams params)? attempt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetTasksParams params)? attempt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Attempt value) attempt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Attempt value)? attempt,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Attempt value)? attempt,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetInProgressEventCopyWith<GetInProgressEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetInProgressEventCopyWith<$Res> {
  factory $GetInProgressEventCopyWith(
          GetInProgressEvent value, $Res Function(GetInProgressEvent) then) =
      _$GetInProgressEventCopyWithImpl<$Res, GetInProgressEvent>;
  @useResult
  $Res call({GetTasksParams params});

  $GetTasksParamsCopyWith<$Res> get params;
}

/// @nodoc
class _$GetInProgressEventCopyWithImpl<$Res, $Val extends GetInProgressEvent>
    implements $GetInProgressEventCopyWith<$Res> {
  _$GetInProgressEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_value.copyWith(
      params: null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as GetTasksParams,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GetTasksParamsCopyWith<$Res> get params {
    return $GetTasksParamsCopyWith<$Res>(_value.params, (value) {
      return _then(_value.copyWith(params: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$AttemptImplCopyWith<$Res>
    implements $GetInProgressEventCopyWith<$Res> {
  factory _$$AttemptImplCopyWith(
          _$AttemptImpl value, $Res Function(_$AttemptImpl) then) =
      __$$AttemptImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GetTasksParams params});

  @override
  $GetTasksParamsCopyWith<$Res> get params;
}

/// @nodoc
class __$$AttemptImplCopyWithImpl<$Res>
    extends _$GetInProgressEventCopyWithImpl<$Res, _$AttemptImpl>
    implements _$$AttemptImplCopyWith<$Res> {
  __$$AttemptImplCopyWithImpl(
      _$AttemptImpl _value, $Res Function(_$AttemptImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? params = null,
  }) {
    return _then(_$AttemptImpl(
      null == params
          ? _value.params
          : params // ignore: cast_nullable_to_non_nullable
              as GetTasksParams,
    ));
  }
}

/// @nodoc

class _$AttemptImpl implements _Attempt {
  const _$AttemptImpl(this.params);

  @override
  final GetTasksParams params;

  @override
  String toString() {
    return 'GetInProgressEvent.attempt(params: $params)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AttemptImpl &&
            (identical(other.params, params) || other.params == params));
  }

  @override
  int get hashCode => Object.hash(runtimeType, params);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AttemptImplCopyWith<_$AttemptImpl> get copyWith =>
      __$$AttemptImplCopyWithImpl<_$AttemptImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(GetTasksParams params) attempt,
  }) {
    return attempt(params);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(GetTasksParams params)? attempt,
  }) {
    return attempt?.call(params);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(GetTasksParams params)? attempt,
    required TResult orElse(),
  }) {
    if (attempt != null) {
      return attempt(params);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Attempt value) attempt,
  }) {
    return attempt(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Attempt value)? attempt,
  }) {
    return attempt?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Attempt value)? attempt,
    required TResult orElse(),
  }) {
    if (attempt != null) {
      return attempt(this);
    }
    return orElse();
  }
}

abstract class _Attempt implements GetInProgressEvent {
  const factory _Attempt(final GetTasksParams params) = _$AttemptImpl;

  @override
  GetTasksParams get params;
  @override
  @JsonKey(ignore: true)
  _$$AttemptImplCopyWith<_$AttemptImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetInProgressState {
  TasksEntity get tasks => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksEntity tasks) initial,
    required TResult Function(TasksEntity tasks) loading,
    required TResult Function(TasksEntity tasks) success,
    required TResult Function(TasksEntity tasks, String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksEntity tasks)? initial,
    TResult? Function(TasksEntity tasks)? loading,
    TResult? Function(TasksEntity tasks)? success,
    TResult? Function(TasksEntity tasks, String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksEntity tasks)? initial,
    TResult Function(TasksEntity tasks)? loading,
    TResult Function(TasksEntity tasks)? success,
    TResult Function(TasksEntity tasks, String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetInProgressStateCopyWith<GetInProgressState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetInProgressStateCopyWith<$Res> {
  factory $GetInProgressStateCopyWith(
          GetInProgressState value, $Res Function(GetInProgressState) then) =
      _$GetInProgressStateCopyWithImpl<$Res, GetInProgressState>;
  @useResult
  $Res call({TasksEntity tasks});

  $TasksEntityCopyWith<$Res> get tasks;
}

/// @nodoc
class _$GetInProgressStateCopyWithImpl<$Res, $Val extends GetInProgressState>
    implements $GetInProgressStateCopyWith<$Res> {
  _$GetInProgressStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_value.copyWith(
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as TasksEntity,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TasksEntityCopyWith<$Res> get tasks {
    return $TasksEntityCopyWith<$Res>(_value.tasks, (value) {
      return _then(_value.copyWith(tasks: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $GetInProgressStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TasksEntity tasks});

  @override
  $TasksEntityCopyWith<$Res> get tasks;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$GetInProgressStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$InitialImpl(
      null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as TasksEntity,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(this.tasks);

  @override
  final TasksEntity tasks;

  @override
  String toString() {
    return 'GetInProgressState.initial(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.tasks, tasks) || other.tasks == tasks));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tasks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksEntity tasks) initial,
    required TResult Function(TasksEntity tasks) loading,
    required TResult Function(TasksEntity tasks) success,
    required TResult Function(TasksEntity tasks, String message) failure,
  }) {
    return initial(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksEntity tasks)? initial,
    TResult? Function(TasksEntity tasks)? loading,
    TResult? Function(TasksEntity tasks)? success,
    TResult? Function(TasksEntity tasks, String message)? failure,
  }) {
    return initial?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksEntity tasks)? initial,
    TResult Function(TasksEntity tasks)? loading,
    TResult Function(TasksEntity tasks)? success,
    TResult Function(TasksEntity tasks, String message)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GetInProgressState {
  const factory _Initial(final TasksEntity tasks) = _$InitialImpl;

  @override
  TasksEntity get tasks;
  @override
  @JsonKey(ignore: true)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res>
    implements $GetInProgressStateCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TasksEntity tasks});

  @override
  $TasksEntityCopyWith<$Res> get tasks;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$GetInProgressStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$LoadingImpl(
      null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as TasksEntity,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(this.tasks);

  @override
  final TasksEntity tasks;

  @override
  String toString() {
    return 'GetInProgressState.loading(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            (identical(other.tasks, tasks) || other.tasks == tasks));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tasks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksEntity tasks) initial,
    required TResult Function(TasksEntity tasks) loading,
    required TResult Function(TasksEntity tasks) success,
    required TResult Function(TasksEntity tasks, String message) failure,
  }) {
    return loading(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksEntity tasks)? initial,
    TResult? Function(TasksEntity tasks)? loading,
    TResult? Function(TasksEntity tasks)? success,
    TResult? Function(TasksEntity tasks, String message)? failure,
  }) {
    return loading?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksEntity tasks)? initial,
    TResult Function(TasksEntity tasks)? loading,
    TResult Function(TasksEntity tasks)? success,
    TResult Function(TasksEntity tasks, String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements GetInProgressState {
  const factory _Loading(final TasksEntity tasks) = _$LoadingImpl;

  @override
  TasksEntity get tasks;
  @override
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessImplCopyWith<$Res>
    implements $GetInProgressStateCopyWith<$Res> {
  factory _$$SuccessImplCopyWith(
          _$SuccessImpl value, $Res Function(_$SuccessImpl) then) =
      __$$SuccessImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TasksEntity tasks});

  @override
  $TasksEntityCopyWith<$Res> get tasks;
}

/// @nodoc
class __$$SuccessImplCopyWithImpl<$Res>
    extends _$GetInProgressStateCopyWithImpl<$Res, _$SuccessImpl>
    implements _$$SuccessImplCopyWith<$Res> {
  __$$SuccessImplCopyWithImpl(
      _$SuccessImpl _value, $Res Function(_$SuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
  }) {
    return _then(_$SuccessImpl(
      null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as TasksEntity,
    ));
  }
}

/// @nodoc

class _$SuccessImpl implements _Success {
  const _$SuccessImpl(this.tasks);

  @override
  final TasksEntity tasks;

  @override
  String toString() {
    return 'GetInProgressState.success(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessImpl &&
            (identical(other.tasks, tasks) || other.tasks == tasks));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tasks);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      __$$SuccessImplCopyWithImpl<_$SuccessImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksEntity tasks) initial,
    required TResult Function(TasksEntity tasks) loading,
    required TResult Function(TasksEntity tasks) success,
    required TResult Function(TasksEntity tasks, String message) failure,
  }) {
    return success(tasks);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksEntity tasks)? initial,
    TResult? Function(TasksEntity tasks)? loading,
    TResult? Function(TasksEntity tasks)? success,
    TResult? Function(TasksEntity tasks, String message)? failure,
  }) {
    return success?.call(tasks);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksEntity tasks)? initial,
    TResult Function(TasksEntity tasks)? loading,
    TResult Function(TasksEntity tasks)? success,
    TResult Function(TasksEntity tasks, String message)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(tasks);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return success(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return success?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (success != null) {
      return success(this);
    }
    return orElse();
  }
}

abstract class _Success implements GetInProgressState {
  const factory _Success(final TasksEntity tasks) = _$SuccessImpl;

  @override
  TasksEntity get tasks;
  @override
  @JsonKey(ignore: true)
  _$$SuccessImplCopyWith<_$SuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res>
    implements $GetInProgressStateCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TasksEntity tasks, String message});

  @override
  $TasksEntityCopyWith<$Res> get tasks;
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$GetInProgressStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = null,
    Object? message = null,
  }) {
    return _then(_$FailureImpl(
      tasks: null == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as TasksEntity,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl({required this.tasks, required this.message});

  @override
  final TasksEntity tasks;
  @override
  final String message;

  @override
  String toString() {
    return 'GetInProgressState.failure(tasks: $tasks, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.tasks, tasks) || other.tasks == tasks) &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, tasks, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(TasksEntity tasks) initial,
    required TResult Function(TasksEntity tasks) loading,
    required TResult Function(TasksEntity tasks) success,
    required TResult Function(TasksEntity tasks, String message) failure,
  }) {
    return failure(tasks, message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(TasksEntity tasks)? initial,
    TResult? Function(TasksEntity tasks)? loading,
    TResult? Function(TasksEntity tasks)? success,
    TResult? Function(TasksEntity tasks, String message)? failure,
  }) {
    return failure?.call(tasks, message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(TasksEntity tasks)? initial,
    TResult Function(TasksEntity tasks)? loading,
    TResult Function(TasksEntity tasks)? success,
    TResult Function(TasksEntity tasks, String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(tasks, message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Success value) success,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Success value)? success,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Success value)? success,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements GetInProgressState {
  const factory _Failure(
      {required final TasksEntity tasks,
      required final String message}) = _$FailureImpl;

  @override
  TasksEntity get tasks;
  String get message;
  @override
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
