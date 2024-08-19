// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../get_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetTaskParams _$GetTaskParamsFromJson(Map<String, dynamic> json) {
  return _GetTaskParams.fromJson(json);
}

/// @nodoc
mixin _$GetTaskParams {
  @JsonKey(name: "task_id")
  String get taskId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetTaskParamsCopyWith<GetTaskParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTaskParamsCopyWith<$Res> {
  factory $GetTaskParamsCopyWith(
          GetTaskParams value, $Res Function(GetTaskParams) then) =
      _$GetTaskParamsCopyWithImpl<$Res, GetTaskParams>;
  @useResult
  $Res call({@JsonKey(name: "task_id") String taskId});
}

/// @nodoc
class _$GetTaskParamsCopyWithImpl<$Res, $Val extends GetTaskParams>
    implements $GetTaskParamsCopyWith<$Res> {
  _$GetTaskParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_value.copyWith(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetTaskParamsImplCopyWith<$Res>
    implements $GetTaskParamsCopyWith<$Res> {
  factory _$$GetTaskParamsImplCopyWith(
          _$GetTaskParamsImpl value, $Res Function(_$GetTaskParamsImpl) then) =
      __$$GetTaskParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "task_id") String taskId});
}

/// @nodoc
class __$$GetTaskParamsImplCopyWithImpl<$Res>
    extends _$GetTaskParamsCopyWithImpl<$Res, _$GetTaskParamsImpl>
    implements _$$GetTaskParamsImplCopyWith<$Res> {
  __$$GetTaskParamsImplCopyWithImpl(
      _$GetTaskParamsImpl _value, $Res Function(_$GetTaskParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$GetTaskParamsImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetTaskParamsImpl implements _GetTaskParams {
  const _$GetTaskParamsImpl({@JsonKey(name: "task_id") required this.taskId});

  factory _$GetTaskParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetTaskParamsImplFromJson(json);

  @override
  @JsonKey(name: "task_id")
  final String taskId;

  @override
  String toString() {
    return 'GetTaskParams(taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTaskParamsImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTaskParamsImplCopyWith<_$GetTaskParamsImpl> get copyWith =>
      __$$GetTaskParamsImplCopyWithImpl<_$GetTaskParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetTaskParamsImplToJson(
      this,
    );
  }
}

abstract class _GetTaskParams implements GetTaskParams {
  const factory _GetTaskParams(
          {@JsonKey(name: "task_id") required final String taskId}) =
      _$GetTaskParamsImpl;

  factory _GetTaskParams.fromJson(Map<String, dynamic> json) =
      _$GetTaskParamsImpl.fromJson;

  @override
  @JsonKey(name: "task_id")
  String get taskId;
  @override
  @JsonKey(ignore: true)
  _$$GetTaskParamsImplCopyWith<_$GetTaskParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
