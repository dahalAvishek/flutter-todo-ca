// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../get_completed_task_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetCompletedTaskresponse {
  List<Task>? get tasks => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetCompletedTaskresponseCopyWith<GetCompletedTaskresponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCompletedTaskresponseCopyWith<$Res> {
  factory $GetCompletedTaskresponseCopyWith(GetCompletedTaskresponse value,
          $Res Function(GetCompletedTaskresponse) then) =
      _$GetCompletedTaskresponseCopyWithImpl<$Res, GetCompletedTaskresponse>;
  @useResult
  $Res call({List<Task>? tasks});
}

/// @nodoc
class _$GetCompletedTaskresponseCopyWithImpl<$Res,
        $Val extends GetCompletedTaskresponse>
    implements $GetCompletedTaskresponseCopyWith<$Res> {
  _$GetCompletedTaskresponseCopyWithImpl(this._value, this._then);

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
abstract class _$$GetCompletedTaskresponseImplCopyWith<$Res>
    implements $GetCompletedTaskresponseCopyWith<$Res> {
  factory _$$GetCompletedTaskresponseImplCopyWith(
          _$GetCompletedTaskresponseImpl value,
          $Res Function(_$GetCompletedTaskresponseImpl) then) =
      __$$GetCompletedTaskresponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Task>? tasks});
}

/// @nodoc
class __$$GetCompletedTaskresponseImplCopyWithImpl<$Res>
    extends _$GetCompletedTaskresponseCopyWithImpl<$Res,
        _$GetCompletedTaskresponseImpl>
    implements _$$GetCompletedTaskresponseImplCopyWith<$Res> {
  __$$GetCompletedTaskresponseImplCopyWithImpl(
      _$GetCompletedTaskresponseImpl _value,
      $Res Function(_$GetCompletedTaskresponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tasks = freezed,
  }) {
    return _then(_$GetCompletedTaskresponseImpl(
      tasks: freezed == tasks
          ? _value._tasks
          : tasks // ignore: cast_nullable_to_non_nullable
              as List<Task>?,
    ));
  }
}

/// @nodoc

class _$GetCompletedTaskresponseImpl extends _GetCompletedTaskresponse {
  const _$GetCompletedTaskresponseImpl({final List<Task>? tasks})
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
    return 'GetCompletedTaskresponse(tasks: $tasks)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCompletedTaskresponseImpl &&
            const DeepCollectionEquality().equals(other._tasks, _tasks));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_tasks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCompletedTaskresponseImplCopyWith<_$GetCompletedTaskresponseImpl>
      get copyWith => __$$GetCompletedTaskresponseImplCopyWithImpl<
          _$GetCompletedTaskresponseImpl>(this, _$identity);
}

abstract class _GetCompletedTaskresponse extends GetCompletedTaskresponse {
  const factory _GetCompletedTaskresponse({final List<Task>? tasks}) =
      _$GetCompletedTaskresponseImpl;
  const _GetCompletedTaskresponse._() : super._();

  @override
  List<Task>? get tasks;
  @override
  @JsonKey(ignore: true)
  _$$GetCompletedTaskresponseImplCopyWith<_$GetCompletedTaskresponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
