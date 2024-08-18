// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../create_task_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateTasksResponse {
  Task? get task => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateTasksResponseCopyWith<CreateTasksResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTasksResponseCopyWith<$Res> {
  factory $CreateTasksResponseCopyWith(
          CreateTasksResponse value, $Res Function(CreateTasksResponse) then) =
      _$CreateTasksResponseCopyWithImpl<$Res, CreateTasksResponse>;
  @useResult
  $Res call({Task? task});

  $TaskCopyWith<$Res>? get task;
}

/// @nodoc
class _$CreateTasksResponseCopyWithImpl<$Res, $Val extends CreateTasksResponse>
    implements $CreateTasksResponseCopyWith<$Res> {
  _$CreateTasksResponseCopyWithImpl(this._value, this._then);

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
abstract class _$$CreateTasksResponseImplCopyWith<$Res>
    implements $CreateTasksResponseCopyWith<$Res> {
  factory _$$CreateTasksResponseImplCopyWith(_$CreateTasksResponseImpl value,
          $Res Function(_$CreateTasksResponseImpl) then) =
      __$$CreateTasksResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Task? task});

  @override
  $TaskCopyWith<$Res>? get task;
}

/// @nodoc
class __$$CreateTasksResponseImplCopyWithImpl<$Res>
    extends _$CreateTasksResponseCopyWithImpl<$Res, _$CreateTasksResponseImpl>
    implements _$$CreateTasksResponseImplCopyWith<$Res> {
  __$$CreateTasksResponseImplCopyWithImpl(_$CreateTasksResponseImpl _value,
      $Res Function(_$CreateTasksResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_$CreateTasksResponseImpl(
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task?,
    ));
  }
}

/// @nodoc

class _$CreateTasksResponseImpl extends _CreateTasksResponse {
  const _$CreateTasksResponseImpl({this.task}) : super._();

  @override
  final Task? task;

  @override
  String toString() {
    return 'CreateTasksResponse(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTasksResponseImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTasksResponseImplCopyWith<_$CreateTasksResponseImpl> get copyWith =>
      __$$CreateTasksResponseImplCopyWithImpl<_$CreateTasksResponseImpl>(
          this, _$identity);
}

abstract class _CreateTasksResponse extends CreateTasksResponse {
  const factory _CreateTasksResponse({final Task? task}) =
      _$CreateTasksResponseImpl;
  const _CreateTasksResponse._() : super._();

  @override
  Task? get task;
  @override
  @JsonKey(ignore: true)
  _$$CreateTasksResponseImplCopyWith<_$CreateTasksResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
