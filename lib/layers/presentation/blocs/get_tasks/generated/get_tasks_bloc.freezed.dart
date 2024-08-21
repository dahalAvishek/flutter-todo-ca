// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../get_tasks_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetTasksEvent {
  String get todoSectionId => throw _privateConstructorUsedError;
  String get inProgressSectionId => throw _privateConstructorUsedError;
  String get doneStringId => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String todoSectionId, String inProgressSectionId,
            String doneStringId)
        getTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String todoSectionId, String inProgressSectionId,
            String doneStringId)?
        getTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String todoSectionId, String inProgressSectionId,
            String doneStringId)?
        getTasks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetTasksEventCopyWith<GetTasksEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTasksEventCopyWith<$Res> {
  factory $GetTasksEventCopyWith(
          GetTasksEvent value, $Res Function(GetTasksEvent) then) =
      _$GetTasksEventCopyWithImpl<$Res, GetTasksEvent>;
  @useResult
  $Res call(
      {String todoSectionId, String inProgressSectionId, String doneStringId});
}

/// @nodoc
class _$GetTasksEventCopyWithImpl<$Res, $Val extends GetTasksEvent>
    implements $GetTasksEventCopyWith<$Res> {
  _$GetTasksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoSectionId = null,
    Object? inProgressSectionId = null,
    Object? doneStringId = null,
  }) {
    return _then(_value.copyWith(
      todoSectionId: null == todoSectionId
          ? _value.todoSectionId
          : todoSectionId // ignore: cast_nullable_to_non_nullable
              as String,
      inProgressSectionId: null == inProgressSectionId
          ? _value.inProgressSectionId
          : inProgressSectionId // ignore: cast_nullable_to_non_nullable
              as String,
      doneStringId: null == doneStringId
          ? _value.doneStringId
          : doneStringId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetTasksImplCopyWith<$Res>
    implements $GetTasksEventCopyWith<$Res> {
  factory _$$GetTasksImplCopyWith(
          _$GetTasksImpl value, $Res Function(_$GetTasksImpl) then) =
      __$$GetTasksImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String todoSectionId, String inProgressSectionId, String doneStringId});
}

/// @nodoc
class __$$GetTasksImplCopyWithImpl<$Res>
    extends _$GetTasksEventCopyWithImpl<$Res, _$GetTasksImpl>
    implements _$$GetTasksImplCopyWith<$Res> {
  __$$GetTasksImplCopyWithImpl(
      _$GetTasksImpl _value, $Res Function(_$GetTasksImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoSectionId = null,
    Object? inProgressSectionId = null,
    Object? doneStringId = null,
  }) {
    return _then(_$GetTasksImpl(
      todoSectionId: null == todoSectionId
          ? _value.todoSectionId
          : todoSectionId // ignore: cast_nullable_to_non_nullable
              as String,
      inProgressSectionId: null == inProgressSectionId
          ? _value.inProgressSectionId
          : inProgressSectionId // ignore: cast_nullable_to_non_nullable
              as String,
      doneStringId: null == doneStringId
          ? _value.doneStringId
          : doneStringId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetTasksImpl implements _GetTasks {
  const _$GetTasksImpl(
      {required this.todoSectionId,
      required this.inProgressSectionId,
      required this.doneStringId});

  @override
  final String todoSectionId;
  @override
  final String inProgressSectionId;
  @override
  final String doneStringId;

  @override
  String toString() {
    return 'GetTasksEvent.getTasks(todoSectionId: $todoSectionId, inProgressSectionId: $inProgressSectionId, doneStringId: $doneStringId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTasksImpl &&
            (identical(other.todoSectionId, todoSectionId) ||
                other.todoSectionId == todoSectionId) &&
            (identical(other.inProgressSectionId, inProgressSectionId) ||
                other.inProgressSectionId == inProgressSectionId) &&
            (identical(other.doneStringId, doneStringId) ||
                other.doneStringId == doneStringId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, todoSectionId, inProgressSectionId, doneStringId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTasksImplCopyWith<_$GetTasksImpl> get copyWith =>
      __$$GetTasksImplCopyWithImpl<_$GetTasksImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String todoSectionId, String inProgressSectionId,
            String doneStringId)
        getTasks,
  }) {
    return getTasks(todoSectionId, inProgressSectionId, doneStringId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String todoSectionId, String inProgressSectionId,
            String doneStringId)?
        getTasks,
  }) {
    return getTasks?.call(todoSectionId, inProgressSectionId, doneStringId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String todoSectionId, String inProgressSectionId,
            String doneStringId)?
        getTasks,
    required TResult orElse(),
  }) {
    if (getTasks != null) {
      return getTasks(todoSectionId, inProgressSectionId, doneStringId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetTasks value) getTasks,
  }) {
    return getTasks(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetTasks value)? getTasks,
  }) {
    return getTasks?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetTasks value)? getTasks,
    required TResult orElse(),
  }) {
    if (getTasks != null) {
      return getTasks(this);
    }
    return orElse();
  }
}

abstract class _GetTasks implements GetTasksEvent {
  const factory _GetTasks(
      {required final String todoSectionId,
      required final String inProgressSectionId,
      required final String doneStringId}) = _$GetTasksImpl;

  @override
  String get todoSectionId;
  @override
  String get inProgressSectionId;
  @override
  String get doneStringId;
  @override
  @JsonKey(ignore: true)
  _$$GetTasksImplCopyWith<_$GetTasksImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$GetTasksState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TaskEntity>? todo,
            List<TaskEntity>? inProgress, List<TaskEntity>? done)
        loading,
    required TResult Function(List<TaskEntity> todo,
            List<TaskEntity> inProgress, List<TaskEntity> done)
        successAll,
    required TResult Function(String message) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TaskEntity>? todo, List<TaskEntity>? inProgress,
            List<TaskEntity>? done)?
        loading,
    TResult? Function(List<TaskEntity> todo, List<TaskEntity> inProgress,
            List<TaskEntity> done)?
        successAll,
    TResult? Function(String message)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskEntity>? todo, List<TaskEntity>? inProgress,
            List<TaskEntity>? done)?
        loading,
    TResult Function(List<TaskEntity> todo, List<TaskEntity> inProgress,
            List<TaskEntity> done)?
        successAll,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessAll value) successAll,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessAll value)? successAll,
    TResult? Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessAll value)? successAll,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTasksStateCopyWith<$Res> {
  factory $GetTasksStateCopyWith(
          GetTasksState value, $Res Function(GetTasksState) then) =
      _$GetTasksStateCopyWithImpl<$Res, GetTasksState>;
}

/// @nodoc
class _$GetTasksStateCopyWithImpl<$Res, $Val extends GetTasksState>
    implements $GetTasksStateCopyWith<$Res> {
  _$GetTasksStateCopyWithImpl(this._value, this._then);

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
    extends _$GetTasksStateCopyWithImpl<$Res, _$InitialImpl>
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
    return 'GetTasksState.initial()';
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
    required TResult Function(List<TaskEntity>? todo,
            List<TaskEntity>? inProgress, List<TaskEntity>? done)
        loading,
    required TResult Function(List<TaskEntity> todo,
            List<TaskEntity> inProgress, List<TaskEntity> done)
        successAll,
    required TResult Function(String message) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TaskEntity>? todo, List<TaskEntity>? inProgress,
            List<TaskEntity>? done)?
        loading,
    TResult? Function(List<TaskEntity> todo, List<TaskEntity> inProgress,
            List<TaskEntity> done)?
        successAll,
    TResult? Function(String message)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskEntity>? todo, List<TaskEntity>? inProgress,
            List<TaskEntity>? done)?
        loading,
    TResult Function(List<TaskEntity> todo, List<TaskEntity> inProgress,
            List<TaskEntity> done)?
        successAll,
    TResult Function(String message)? failure,
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
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessAll value) successAll,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessAll value)? successAll,
    TResult? Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessAll value)? successAll,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements GetTasksState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
          _$LoadingImpl value, $Res Function(_$LoadingImpl) then) =
      __$$LoadingImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<TaskEntity>? todo,
      List<TaskEntity>? inProgress,
      List<TaskEntity>? done});
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$GetTasksStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
      _$LoadingImpl _value, $Res Function(_$LoadingImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = freezed,
    Object? inProgress = freezed,
    Object? done = freezed,
  }) {
    return _then(_$LoadingImpl(
      todo: freezed == todo
          ? _value._todo
          : todo // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>?,
      inProgress: freezed == inProgress
          ? _value._inProgress
          : inProgress // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>?,
      done: freezed == done
          ? _value._done
          : done // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>?,
    ));
  }
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl(
      {final List<TaskEntity>? todo,
      final List<TaskEntity>? inProgress,
      final List<TaskEntity>? done})
      : _todo = todo,
        _inProgress = inProgress,
        _done = done;

  final List<TaskEntity>? _todo;
  @override
  List<TaskEntity>? get todo {
    final value = _todo;
    if (value == null) return null;
    if (_todo is EqualUnmodifiableListView) return _todo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TaskEntity>? _inProgress;
  @override
  List<TaskEntity>? get inProgress {
    final value = _inProgress;
    if (value == null) return null;
    if (_inProgress is EqualUnmodifiableListView) return _inProgress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<TaskEntity>? _done;
  @override
  List<TaskEntity>? get done {
    final value = _done;
    if (value == null) return null;
    if (_done is EqualUnmodifiableListView) return _done;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetTasksState.loading(todo: $todo, inProgress: $inProgress, done: $done)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoadingImpl &&
            const DeepCollectionEquality().equals(other._todo, _todo) &&
            const DeepCollectionEquality()
                .equals(other._inProgress, _inProgress) &&
            const DeepCollectionEquality().equals(other._done, _done));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_todo),
      const DeepCollectionEquality().hash(_inProgress),
      const DeepCollectionEquality().hash(_done));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      __$$LoadingImplCopyWithImpl<_$LoadingImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TaskEntity>? todo,
            List<TaskEntity>? inProgress, List<TaskEntity>? done)
        loading,
    required TResult Function(List<TaskEntity> todo,
            List<TaskEntity> inProgress, List<TaskEntity> done)
        successAll,
    required TResult Function(String message) failure,
  }) {
    return loading(todo, inProgress, done);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TaskEntity>? todo, List<TaskEntity>? inProgress,
            List<TaskEntity>? done)?
        loading,
    TResult? Function(List<TaskEntity> todo, List<TaskEntity> inProgress,
            List<TaskEntity> done)?
        successAll,
    TResult? Function(String message)? failure,
  }) {
    return loading?.call(todo, inProgress, done);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskEntity>? todo, List<TaskEntity>? inProgress,
            List<TaskEntity>? done)?
        loading,
    TResult Function(List<TaskEntity> todo, List<TaskEntity> inProgress,
            List<TaskEntity> done)?
        successAll,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(todo, inProgress, done);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessAll value) successAll,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessAll value)? successAll,
    TResult? Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessAll value)? successAll,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements GetTasksState {
  const factory _Loading(
      {final List<TaskEntity>? todo,
      final List<TaskEntity>? inProgress,
      final List<TaskEntity>? done}) = _$LoadingImpl;

  List<TaskEntity>? get todo;
  List<TaskEntity>? get inProgress;
  List<TaskEntity>? get done;
  @JsonKey(ignore: true)
  _$$LoadingImplCopyWith<_$LoadingImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SuccessAllImplCopyWith<$Res> {
  factory _$$SuccessAllImplCopyWith(
          _$SuccessAllImpl value, $Res Function(_$SuccessAllImpl) then) =
      __$$SuccessAllImplCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {List<TaskEntity> todo,
      List<TaskEntity> inProgress,
      List<TaskEntity> done});
}

/// @nodoc
class __$$SuccessAllImplCopyWithImpl<$Res>
    extends _$GetTasksStateCopyWithImpl<$Res, _$SuccessAllImpl>
    implements _$$SuccessAllImplCopyWith<$Res> {
  __$$SuccessAllImplCopyWithImpl(
      _$SuccessAllImpl _value, $Res Function(_$SuccessAllImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todo = null,
    Object? inProgress = null,
    Object? done = null,
  }) {
    return _then(_$SuccessAllImpl(
      todo: null == todo
          ? _value._todo
          : todo // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
      inProgress: null == inProgress
          ? _value._inProgress
          : inProgress // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
      done: null == done
          ? _value._done
          : done // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>,
    ));
  }
}

/// @nodoc

class _$SuccessAllImpl implements _SuccessAll {
  const _$SuccessAllImpl(
      {required final List<TaskEntity> todo,
      required final List<TaskEntity> inProgress,
      required final List<TaskEntity> done})
      : _todo = todo,
        _inProgress = inProgress,
        _done = done;

  final List<TaskEntity> _todo;
  @override
  List<TaskEntity> get todo {
    if (_todo is EqualUnmodifiableListView) return _todo;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_todo);
  }

  final List<TaskEntity> _inProgress;
  @override
  List<TaskEntity> get inProgress {
    if (_inProgress is EqualUnmodifiableListView) return _inProgress;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inProgress);
  }

  final List<TaskEntity> _done;
  @override
  List<TaskEntity> get done {
    if (_done is EqualUnmodifiableListView) return _done;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_done);
  }

  @override
  String toString() {
    return 'GetTasksState.successAll(todo: $todo, inProgress: $inProgress, done: $done)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessAllImpl &&
            const DeepCollectionEquality().equals(other._todo, _todo) &&
            const DeepCollectionEquality()
                .equals(other._inProgress, _inProgress) &&
            const DeepCollectionEquality().equals(other._done, _done));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_todo),
      const DeepCollectionEquality().hash(_inProgress),
      const DeepCollectionEquality().hash(_done));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessAllImplCopyWith<_$SuccessAllImpl> get copyWith =>
      __$$SuccessAllImplCopyWithImpl<_$SuccessAllImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TaskEntity>? todo,
            List<TaskEntity>? inProgress, List<TaskEntity>? done)
        loading,
    required TResult Function(List<TaskEntity> todo,
            List<TaskEntity> inProgress, List<TaskEntity> done)
        successAll,
    required TResult Function(String message) failure,
  }) {
    return successAll(todo, inProgress, done);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TaskEntity>? todo, List<TaskEntity>? inProgress,
            List<TaskEntity>? done)?
        loading,
    TResult? Function(List<TaskEntity> todo, List<TaskEntity> inProgress,
            List<TaskEntity> done)?
        successAll,
    TResult? Function(String message)? failure,
  }) {
    return successAll?.call(todo, inProgress, done);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskEntity>? todo, List<TaskEntity>? inProgress,
            List<TaskEntity>? done)?
        loading,
    TResult Function(List<TaskEntity> todo, List<TaskEntity> inProgress,
            List<TaskEntity> done)?
        successAll,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (successAll != null) {
      return successAll(todo, inProgress, done);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessAll value) successAll,
    required TResult Function(_Failure value) failure,
  }) {
    return successAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessAll value)? successAll,
    TResult? Function(_Failure value)? failure,
  }) {
    return successAll?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessAll value)? successAll,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (successAll != null) {
      return successAll(this);
    }
    return orElse();
  }
}

abstract class _SuccessAll implements GetTasksState {
  const factory _SuccessAll(
      {required final List<TaskEntity> todo,
      required final List<TaskEntity> inProgress,
      required final List<TaskEntity> done}) = _$SuccessAllImpl;

  List<TaskEntity> get todo;
  List<TaskEntity> get inProgress;
  List<TaskEntity> get done;
  @JsonKey(ignore: true)
  _$$SuccessAllImplCopyWith<_$SuccessAllImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureImplCopyWith<$Res> {
  factory _$$FailureImplCopyWith(
          _$FailureImpl value, $Res Function(_$FailureImpl) then) =
      __$$FailureImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureImplCopyWithImpl<$Res>
    extends _$GetTasksStateCopyWithImpl<$Res, _$FailureImpl>
    implements _$$FailureImplCopyWith<$Res> {
  __$$FailureImplCopyWithImpl(
      _$FailureImpl _value, $Res Function(_$FailureImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureImpl implements _Failure {
  const _$FailureImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'GetTasksState.failure(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      __$$FailureImplCopyWithImpl<_$FailureImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(List<TaskEntity>? todo,
            List<TaskEntity>? inProgress, List<TaskEntity>? done)
        loading,
    required TResult Function(List<TaskEntity> todo,
            List<TaskEntity> inProgress, List<TaskEntity> done)
        successAll,
    required TResult Function(String message) failure,
  }) {
    return failure(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(List<TaskEntity>? todo, List<TaskEntity>? inProgress,
            List<TaskEntity>? done)?
        loading,
    TResult? Function(List<TaskEntity> todo, List<TaskEntity> inProgress,
            List<TaskEntity> done)?
        successAll,
    TResult? Function(String message)? failure,
  }) {
    return failure?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(List<TaskEntity>? todo, List<TaskEntity>? inProgress,
            List<TaskEntity>? done)?
        loading,
    TResult Function(List<TaskEntity> todo, List<TaskEntity> inProgress,
            List<TaskEntity> done)?
        successAll,
    TResult Function(String message)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_SuccessAll value) successAll,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_SuccessAll value)? successAll,
    TResult? Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_SuccessAll value)? successAll,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements GetTasksState {
  const factory _Failure(final String message) = _$FailureImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$FailureImplCopyWith<_$FailureImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
