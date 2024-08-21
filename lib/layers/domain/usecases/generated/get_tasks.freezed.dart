// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../get_tasks.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

GetTasksParams _$GetTasksParamsFromJson(Map<String, dynamic> json) {
  return _GetTasksParams.fromJson(json);
}

/// @nodoc
mixin _$GetTasksParams {
  @JsonKey(name: "section_id")
  String? get sectionId => throw _privateConstructorUsedError;
  @JsonKey(name: "project_id")
  String? get projectId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GetTasksParamsCopyWith<GetTasksParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetTasksParamsCopyWith<$Res> {
  factory $GetTasksParamsCopyWith(
          GetTasksParams value, $Res Function(GetTasksParams) then) =
      _$GetTasksParamsCopyWithImpl<$Res, GetTasksParams>;
  @useResult
  $Res call(
      {@JsonKey(name: "section_id") String? sectionId,
      @JsonKey(name: "project_id") String? projectId});
}

/// @nodoc
class _$GetTasksParamsCopyWithImpl<$Res, $Val extends GetTasksParams>
    implements $GetTasksParamsCopyWith<$Res> {
  _$GetTasksParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sectionId = freezed,
    Object? projectId = freezed,
  }) {
    return _then(_value.copyWith(
      sectionId: freezed == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetTasksParamsImplCopyWith<$Res>
    implements $GetTasksParamsCopyWith<$Res> {
  factory _$$GetTasksParamsImplCopyWith(_$GetTasksParamsImpl value,
          $Res Function(_$GetTasksParamsImpl) then) =
      __$$GetTasksParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "section_id") String? sectionId,
      @JsonKey(name: "project_id") String? projectId});
}

/// @nodoc
class __$$GetTasksParamsImplCopyWithImpl<$Res>
    extends _$GetTasksParamsCopyWithImpl<$Res, _$GetTasksParamsImpl>
    implements _$$GetTasksParamsImplCopyWith<$Res> {
  __$$GetTasksParamsImplCopyWithImpl(
      _$GetTasksParamsImpl _value, $Res Function(_$GetTasksParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sectionId = freezed,
    Object? projectId = freezed,
  }) {
    return _then(_$GetTasksParamsImpl(
      sectionId: freezed == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$GetTasksParamsImpl implements _GetTasksParams {
  const _$GetTasksParamsImpl(
      {@JsonKey(name: "section_id") this.sectionId,
      @JsonKey(name: "project_id") this.projectId});

  factory _$GetTasksParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$GetTasksParamsImplFromJson(json);

  @override
  @JsonKey(name: "section_id")
  final String? sectionId;
  @override
  @JsonKey(name: "project_id")
  final String? projectId;

  @override
  String toString() {
    return 'GetTasksParams(sectionId: $sectionId, projectId: $projectId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetTasksParamsImpl &&
            (identical(other.sectionId, sectionId) ||
                other.sectionId == sectionId) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sectionId, projectId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetTasksParamsImplCopyWith<_$GetTasksParamsImpl> get copyWith =>
      __$$GetTasksParamsImplCopyWithImpl<_$GetTasksParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$GetTasksParamsImplToJson(
      this,
    );
  }
}

abstract class _GetTasksParams implements GetTasksParams {
  const factory _GetTasksParams(
          {@JsonKey(name: "section_id") final String? sectionId,
          @JsonKey(name: "project_id") final String? projectId}) =
      _$GetTasksParamsImpl;

  factory _GetTasksParams.fromJson(Map<String, dynamic> json) =
      _$GetTasksParamsImpl.fromJson;

  @override
  @JsonKey(name: "section_id")
  String? get sectionId;
  @override
  @JsonKey(name: "project_id")
  String? get projectId;
  @override
  @JsonKey(ignore: true)
  _$$GetTasksParamsImplCopyWith<_$GetTasksParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
