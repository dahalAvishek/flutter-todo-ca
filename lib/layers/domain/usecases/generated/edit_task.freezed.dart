// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../edit_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EditTaskParams _$EditTaskParamsFromJson(Map<String, dynamic> json) {
  return _EditTaskParams.fromJson(json);
}

/// @nodoc
mixin _$EditTaskParams {
  @JsonKey(name: "task_id")
  String get taskId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EditTaskParamsCopyWith<EditTaskParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EditTaskParamsCopyWith<$Res> {
  factory $EditTaskParamsCopyWith(
          EditTaskParams value, $Res Function(EditTaskParams) then) =
      _$EditTaskParamsCopyWithImpl<$Res, EditTaskParams>;
  @useResult
  $Res call(
      {@JsonKey(name: "task_id") String taskId,
      String content,
      String? description});
}

/// @nodoc
class _$EditTaskParamsCopyWithImpl<$Res, $Val extends EditTaskParams>
    implements $EditTaskParamsCopyWith<$Res> {
  _$EditTaskParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? content = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$EditTaskParamsImplCopyWith<$Res>
    implements $EditTaskParamsCopyWith<$Res> {
  factory _$$EditTaskParamsImplCopyWith(_$EditTaskParamsImpl value,
          $Res Function(_$EditTaskParamsImpl) then) =
      __$$EditTaskParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "task_id") String taskId,
      String content,
      String? description});
}

/// @nodoc
class __$$EditTaskParamsImplCopyWithImpl<$Res>
    extends _$EditTaskParamsCopyWithImpl<$Res, _$EditTaskParamsImpl>
    implements _$$EditTaskParamsImplCopyWith<$Res> {
  __$$EditTaskParamsImplCopyWithImpl(
      _$EditTaskParamsImpl _value, $Res Function(_$EditTaskParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? content = null,
    Object? description = freezed,
  }) {
    return _then(_$EditTaskParamsImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EditTaskParamsImpl implements _EditTaskParams {
  const _$EditTaskParamsImpl(
      {@JsonKey(name: "task_id") required this.taskId,
      required this.content,
      this.description});

  factory _$EditTaskParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$EditTaskParamsImplFromJson(json);

  @override
  @JsonKey(name: "task_id")
  final String taskId;
  @override
  final String content;
  @override
  final String? description;

  @override
  String toString() {
    return 'EditTaskParams(taskId: $taskId, content: $content, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EditTaskParamsImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, taskId, content, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EditTaskParamsImplCopyWith<_$EditTaskParamsImpl> get copyWith =>
      __$$EditTaskParamsImplCopyWithImpl<_$EditTaskParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EditTaskParamsImplToJson(
      this,
    );
  }
}

abstract class _EditTaskParams implements EditTaskParams {
  const factory _EditTaskParams(
      {@JsonKey(name: "task_id") required final String taskId,
      required final String content,
      final String? description}) = _$EditTaskParamsImpl;

  factory _EditTaskParams.fromJson(Map<String, dynamic> json) =
      _$EditTaskParamsImpl.fromJson;

  @override
  @JsonKey(name: "task_id")
  String get taskId;
  @override
  String get content;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$EditTaskParamsImplCopyWith<_$EditTaskParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
