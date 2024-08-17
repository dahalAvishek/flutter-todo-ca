// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../get_tasks_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetTasksResponse {
  List<Task>? get tasks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetTasksResponseCopyWith<GetTasksResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTasksResponseCopyWith<$Res> {
  factory $GetTasksResponseCopyWith(
          GetTasksResponse value, $Res Function(GetTasksResponse) then) =
      _$GetTasksResponseCopyWithImpl<$Res, GetTasksResponse>;
  @useResult
  $Res call({List<Task>? tasks});
}

/// @nodoc
class _$GetTasksResponseCopyWithImpl<$Res, $Val extends GetTasksResponse>
    implements $GetTasksResponseCopyWith<$Res> {
  _$GetTasksResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = freezed,
  }) {
    return _then(_value.copyWith(
      tasks: freezed == tasks
          ? _value.tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetTasksResponseImplCopyWith<$Res>
    implements $GetTasksResponseCopyWith<$Res> {
  factory _$$GetTasksResponseImplCopyWith(_$GetTasksResponseImpl value,
          $Res Function(_$GetTasksResponseImpl) then) =
      __$$GetTasksResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Task>? tasks});
}

/// @nodoc
class __$$GetTasksResponseImplCopyWithImpl<$Res>
    extends _$GetTasksResponseCopyWithImpl<$Res, _$GetTasksResponseImpl>
    implements _$$GetTasksResponseImplCopyWith<$Res> {
  __$$GetTasksResponseImplCopyWithImpl(_$GetTasksResponseImpl _value,
      $Res Function(_$GetTasksResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = freezed,
  }) {
    return _then(_$GetTasksResponseImpl(
      tasks: freezed == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>?,
    ));
  }
}

/// @nodoc

class _$GetTasksResponseImpl extends _GetTasksResponse {
  const _$GetTasksResponseImpl({final List<Task>? tasks})
      : _tasks = tasks,
        super._();

  final List<Task>? _tasks;
  @override
  List<Task>? get tasks {
    final value = _tasks;
    if (value == null) return null;
    if (_tasks is EqualUnmodifiableListView) return _tasks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetTasksResponse(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTasksResponseImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTasksResponseImplCopyWith<_$GetTasksResponseImpl> get copyWith =>
      __$$GetTasksResponseImplCopyWithImpl<_$GetTasksResponseImpl>(
          this, _$identity);
}

abstract class _GetTasksResponse extends GetTasksResponse {
  const factory _GetTasksResponse({final List<Task>? tasks}) =
      _$GetTasksResponseImpl;
  const _GetTasksResponse._() : super._();

  @override
  List<Task>? get tasks;
  @override
  @JsonKey(ignore: true)
  _$$GetTasksResponseImplCopyWith<_$GetTasksResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
