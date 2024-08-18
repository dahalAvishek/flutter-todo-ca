// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../create_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateTaskParams _$CreateTaskParamsFromJson(Map<String, dynamic> json) {
  return _CreateTaskParams.fromJson(json);
}

/// @nodoc
mixin _$CreateTaskParams {
  @JsonKey(name: "section_id")
  String get sectionId => throw _privateConstructorUsedError;
  @JsonKey(name: "project_id")
  String get projectId => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateTaskParamsCopyWith<CreateTaskParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateTaskParamsCopyWith<$Res> {
  factory $CreateTaskParamsCopyWith(
          CreateTaskParams value, $Res Function(CreateTaskParams) then) =
      _$CreateTaskParamsCopyWithImpl<$Res, CreateTaskParams>;
  @useResult
  $Res call(
      {@JsonKey(name: "section_id") String sectionId,
      @JsonKey(name: "project_id") String projectId,
      String content,
      String? description});
}

/// @nodoc
class _$CreateTaskParamsCopyWithImpl<$Res, $Val extends CreateTaskParams>
    implements $CreateTaskParamsCopyWith<$Res> {
  _$CreateTaskParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sectionId = null,
    Object? projectId = null,
    Object? content = null,
    Object? description = freezed,
  }) {
    return _then(_value.copyWith(
      sectionId: null == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
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
abstract class _$$CreateTaskParamsImplCopyWith<$Res>
    implements $CreateTaskParamsCopyWith<$Res> {
  factory _$$CreateTaskParamsImplCopyWith(_$CreateTaskParamsImpl value,
          $Res Function(_$CreateTaskParamsImpl) then) =
      __$$CreateTaskParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "section_id") String sectionId,
      @JsonKey(name: "project_id") String projectId,
      String content,
      String? description});
}

/// @nodoc
class __$$CreateTaskParamsImplCopyWithImpl<$Res>
    extends _$CreateTaskParamsCopyWithImpl<$Res, _$CreateTaskParamsImpl>
    implements _$$CreateTaskParamsImplCopyWith<$Res> {
  __$$CreateTaskParamsImplCopyWithImpl(_$CreateTaskParamsImpl _value,
      $Res Function(_$CreateTaskParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sectionId = null,
    Object? projectId = null,
    Object? content = null,
    Object? description = freezed,
  }) {
    return _then(_$CreateTaskParamsImpl(
      sectionId: null == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String,
      projectId: null == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
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
class _$CreateTaskParamsImpl implements _CreateTaskParams {
  const _$CreateTaskParamsImpl(
      {@JsonKey(name: "section_id") required this.sectionId,
      @JsonKey(name: "project_id") required this.projectId,
      required this.content,
      this.description});

  factory _$CreateTaskParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateTaskParamsImplFromJson(json);

  @override
  @JsonKey(name: "section_id")
  final String sectionId;
  @override
  @JsonKey(name: "project_id")
  final String projectId;
  @override
  final String content;
  @override
  final String? description;

  @override
  String toString() {
    return 'CreateTaskParams(sectionId: $sectionId, projectId: $projectId, content: $content, description: $description)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateTaskParamsImpl &&
            (identical(other.sectionId, sectionId) ||
                other.sectionId == sectionId) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.description, description) ||
                other.description == description));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, sectionId, projectId, content, description);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateTaskParamsImplCopyWith<_$CreateTaskParamsImpl> get copyWith =>
      __$$CreateTaskParamsImplCopyWithImpl<_$CreateTaskParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateTaskParamsImplToJson(
      this,
    );
  }
}

abstract class _CreateTaskParams implements CreateTaskParams {
  const factory _CreateTaskParams(
      {@JsonKey(name: "section_id") required final String sectionId,
      @JsonKey(name: "project_id") required final String projectId,
      required final String content,
      final String? description}) = _$CreateTaskParamsImpl;

  factory _CreateTaskParams.fromJson(Map<String, dynamic> json) =
      _$CreateTaskParamsImpl.fromJson;

  @override
  @JsonKey(name: "section_id")
  String get sectionId;
  @override
  @JsonKey(name: "project_id")
  String get projectId;
  @override
  String get content;
  @override
  String? get description;
  @override
  @JsonKey(ignore: true)
  _$$CreateTaskParamsImplCopyWith<_$CreateTaskParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
