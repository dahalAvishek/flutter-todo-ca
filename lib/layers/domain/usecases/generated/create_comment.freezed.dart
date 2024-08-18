// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../create_comment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateCommentParams _$CreateCommentParamsFromJson(Map<String, dynamic> json) {
  return _CreateCommentParams.fromJson(json);
}

/// @nodoc
mixin _$CreateCommentParams {
  @JsonKey(name: "task_id")
  String get taskId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateCommentParamsCopyWith<CreateCommentParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCommentParamsCopyWith<$Res> {
  factory $CreateCommentParamsCopyWith(
          CreateCommentParams value, $Res Function(CreateCommentParams) then) =
      _$CreateCommentParamsCopyWithImpl<$Res, CreateCommentParams>;
  @useResult
  $Res call({@JsonKey(name: "task_id") String taskId, String content});
}

/// @nodoc
class _$CreateCommentParamsCopyWithImpl<$Res, $Val extends CreateCommentParams>
    implements $CreateCommentParamsCopyWith<$Res> {
  _$CreateCommentParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? content = null,
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
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateCommentParamsImplCopyWith<$Res>
    implements $CreateCommentParamsCopyWith<$Res> {
  factory _$$CreateCommentParamsImplCopyWith(_$CreateCommentParamsImpl value,
          $Res Function(_$CreateCommentParamsImpl) then) =
      __$$CreateCommentParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "task_id") String taskId, String content});
}

/// @nodoc
class __$$CreateCommentParamsImplCopyWithImpl<$Res>
    extends _$CreateCommentParamsCopyWithImpl<$Res, _$CreateCommentParamsImpl>
    implements _$$CreateCommentParamsImplCopyWith<$Res> {
  __$$CreateCommentParamsImplCopyWithImpl(_$CreateCommentParamsImpl _value,
      $Res Function(_$CreateCommentParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
    Object? content = null,
  }) {
    return _then(_$CreateCommentParamsImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateCommentParamsImpl implements _CreateCommentParams {
  const _$CreateCommentParamsImpl(
      {@JsonKey(name: "task_id") required this.taskId, required this.content});

  factory _$CreateCommentParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateCommentParamsImplFromJson(json);

  @override
  @JsonKey(name: "task_id")
  final String taskId;
  @override
  final String content;

  @override
  String toString() {
    return 'CreateCommentParams(taskId: $taskId, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCommentParamsImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, taskId, content);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCommentParamsImplCopyWith<_$CreateCommentParamsImpl> get copyWith =>
      __$$CreateCommentParamsImplCopyWithImpl<_$CreateCommentParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateCommentParamsImplToJson(
      this,
    );
  }
}

abstract class _CreateCommentParams implements CreateCommentParams {
  const factory _CreateCommentParams(
      {@JsonKey(name: "task_id") required final String taskId,
      required final String content}) = _$CreateCommentParamsImpl;

  factory _CreateCommentParams.fromJson(Map<String, dynamic> json) =
      _$CreateCommentParamsImpl.fromJson;

  @override
  @JsonKey(name: "task_id")
  String get taskId;
  @override
  String get content;
  @override
  @JsonKey(ignore: true)
  _$$CreateCommentParamsImplCopyWith<_$CreateCommentParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
