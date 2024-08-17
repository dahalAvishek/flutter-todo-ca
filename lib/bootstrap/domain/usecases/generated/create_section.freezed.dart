// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../create_section.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateSectionParams _$CreateSectionParamsFromJson(Map<String, dynamic> json) {
  return _CreateSectionParams.fromJson(json);
}

/// @nodoc
mixin _$CreateSectionParams {
  @JsonKey(name: "project_id")
  String get projectID => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateSectionParamsCopyWith<CreateSectionParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSectionParamsCopyWith<$Res> {
  factory $CreateSectionParamsCopyWith(
          CreateSectionParams value, $Res Function(CreateSectionParams) then) =
      _$CreateSectionParamsCopyWithImpl<$Res, CreateSectionParams>;
  @useResult
  $Res call({@JsonKey(name: "project_id") String projectID, String name});
}

/// @nodoc
class _$CreateSectionParamsCopyWithImpl<$Res, $Val extends CreateSectionParams>
    implements $CreateSectionParamsCopyWith<$Res> {
  _$CreateSectionParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectID = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      projectID: null == projectID
          ? _value.projectID
          : projectID // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateSectionParamsImplCopyWith<$Res>
    implements $CreateSectionParamsCopyWith<$Res> {
  factory _$$CreateSectionParamsImplCopyWith(_$CreateSectionParamsImpl value,
          $Res Function(_$CreateSectionParamsImpl) then) =
      __$$CreateSectionParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "project_id") String projectID, String name});
}

/// @nodoc
class __$$CreateSectionParamsImplCopyWithImpl<$Res>
    extends _$CreateSectionParamsCopyWithImpl<$Res, _$CreateSectionParamsImpl>
    implements _$$CreateSectionParamsImplCopyWith<$Res> {
  __$$CreateSectionParamsImplCopyWithImpl(_$CreateSectionParamsImpl _value,
      $Res Function(_$CreateSectionParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projectID = null,
    Object? name = null,
  }) {
    return _then(_$CreateSectionParamsImpl(
      projectID: null == projectID
          ? _value.projectID
          : projectID // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateSectionParamsImpl implements _CreateSectionParams {
  const _$CreateSectionParamsImpl(
      {@JsonKey(name: "project_id") required this.projectID,
      required this.name});

  factory _$CreateSectionParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateSectionParamsImplFromJson(json);

  @override
  @JsonKey(name: "project_id")
  final String projectID;
  @override
  final String name;

  @override
  String toString() {
    return 'CreateSectionParams(projectID: $projectID, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSectionParamsImpl &&
            (identical(other.projectID, projectID) ||
                other.projectID == projectID) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, projectID, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSectionParamsImplCopyWith<_$CreateSectionParamsImpl> get copyWith =>
      __$$CreateSectionParamsImplCopyWithImpl<_$CreateSectionParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateSectionParamsImplToJson(
      this,
    );
  }
}

abstract class _CreateSectionParams implements CreateSectionParams {
  const factory _CreateSectionParams(
      {@JsonKey(name: "project_id") required final String projectID,
      required final String name}) = _$CreateSectionParamsImpl;

  factory _CreateSectionParams.fromJson(Map<String, dynamic> json) =
      _$CreateSectionParamsImpl.fromJson;

  @override
  @JsonKey(name: "project_id")
  String get projectID;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CreateSectionParamsImplCopyWith<_$CreateSectionParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
