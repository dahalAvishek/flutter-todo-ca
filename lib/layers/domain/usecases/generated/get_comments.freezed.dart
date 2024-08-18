// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../get_comments.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetCommentsParams _$GetCommentsParamsFromJson(Map<String, dynamic> json) {
  return _GetCommentsParams.fromJson(json);
}

/// @nodoc
mixin _$GetCommentsParams {
  @JsonKey(name: "task_id")
  String get taskId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetCommentsParamsCopyWith<GetCommentsParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCommentsParamsCopyWith<$Res> {
  factory $GetCommentsParamsCopyWith(
          GetCommentsParams value, $Res Function(GetCommentsParams) then) =
      _$GetCommentsParamsCopyWithImpl<$Res, GetCommentsParams>;
  @useResult
  $Res call({@JsonKey(name: "task_id") String taskId});
}

/// @nodoc
class _$GetCommentsParamsCopyWithImpl<$Res, $Val extends GetCommentsParams>
    implements $GetCommentsParamsCopyWith<$Res> {
  _$GetCommentsParamsCopyWithImpl(this._value, this._then);

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
abstract class _$$GetCommentsParamsImplCopyWith<$Res>
    implements $GetCommentsParamsCopyWith<$Res> {
  factory _$$GetCommentsParamsImplCopyWith(_$GetCommentsParamsImpl value,
          $Res Function(_$GetCommentsParamsImpl) then) =
      __$$GetCommentsParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "task_id") String taskId});
}

/// @nodoc
class __$$GetCommentsParamsImplCopyWithImpl<$Res>
    extends _$GetCommentsParamsCopyWithImpl<$Res, _$GetCommentsParamsImpl>
    implements _$$GetCommentsParamsImplCopyWith<$Res> {
  __$$GetCommentsParamsImplCopyWithImpl(_$GetCommentsParamsImpl _value,
      $Res Function(_$GetCommentsParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? taskId = null,
  }) {
    return _then(_$GetCommentsParamsImpl(
      taskId: null == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetCommentsParamsImpl implements _GetCommentsParams {
  const _$GetCommentsParamsImpl(
      {@JsonKey(name: "task_id") required this.taskId});

  factory _$GetCommentsParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetCommentsParamsImplFromJson(json);

  @override
  @JsonKey(name: "task_id")
  final String taskId;

  @override
  String toString() {
    return 'GetCommentsParams(taskId: $taskId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCommentsParamsImpl &&
            (identical(other.taskId, taskId) || other.taskId == taskId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, taskId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCommentsParamsImplCopyWith<_$GetCommentsParamsImpl> get copyWith =>
      __$$GetCommentsParamsImplCopyWithImpl<_$GetCommentsParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetCommentsParamsImplToJson(
      this,
    );
  }
}

abstract class _GetCommentsParams implements GetCommentsParams {
  const factory _GetCommentsParams(
          {@JsonKey(name: "task_id") required final String taskId}) =
      _$GetCommentsParamsImpl;

  factory _GetCommentsParams.fromJson(Map<String, dynamic> json) =
      _$GetCommentsParamsImpl.fromJson;

  @override
  @JsonKey(name: "task_id")
  String get taskId;
  @override
  @JsonKey(ignore: true)
  _$$GetCommentsParamsImplCopyWith<_$GetCommentsParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
