// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../task_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskResponse {
  Task? get task => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskResponseCopyWith<TaskResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskResponseCopyWith<$Res> {
  factory $TaskResponseCopyWith(
          TaskResponse value, $Res Function(TaskResponse) then) =
      _$TaskResponseCopyWithImpl<$Res, TaskResponse>;
  @useResult
  $Res call({Task? task});

  $TaskCopyWith<$Res>? get task;
}

/// @nodoc
class _$TaskResponseCopyWithImpl<$Res, $Val extends TaskResponse>
    implements $TaskResponseCopyWith<$Res> {
  _$TaskResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_value.copyWith(
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res>? get task {
    if (_value.task == null) {
      return null;
    }

    return $TaskCopyWith<$Res>(_value.task!, (value) {
      return _then(_value.copyWith(task: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TaskResponseImplCopyWith<$Res>
    implements $TaskResponseCopyWith<$Res> {
  factory _$$TaskResponseImplCopyWith(
          _$TaskResponseImpl value, $Res Function(_$TaskResponseImpl) then) =
      __$$TaskResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Task? task});

  @override
  $TaskCopyWith<$Res>? get task;
}

/// @nodoc
class __$$TaskResponseImplCopyWithImpl<$Res>
    extends _$TaskResponseCopyWithImpl<$Res, _$TaskResponseImpl>
    implements _$$TaskResponseImplCopyWith<$Res> {
  __$$TaskResponseImplCopyWithImpl(
      _$TaskResponseImpl _value, $Res Function(_$TaskResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_$TaskResponseImpl(
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task?,
    ));
  }
}

/// @nodoc

class _$TaskResponseImpl extends _TaskResponse {
  const _$TaskResponseImpl({this.task}) : super._();

  @override
  final Task? task;

  @override
  String toString() {
    return 'TaskResponse(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskResponseImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskResponseImplCopyWith<_$TaskResponseImpl> get copyWith =>
      __$$TaskResponseImplCopyWithImpl<_$TaskResponseImpl>(this, _$identity);
}

abstract class _TaskResponse extends TaskResponse {
  const factory _TaskResponse({final Task? task}) = _$TaskResponseImpl;
  const _TaskResponse._() : super._();

  @override
  Task? get task;
  @override
  @JsonKey(ignore: true)
  _$$TaskResponseImplCopyWith<_$TaskResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
