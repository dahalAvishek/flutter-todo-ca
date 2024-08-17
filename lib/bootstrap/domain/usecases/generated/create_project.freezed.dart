// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../create_project.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CreateProjectParams _$CreateProjectParamsFromJson(Map<String, dynamic> json) {
  return _CreateProjectParams.fromJson(json);
}

/// @nodoc
mixin _$CreateProjectParams {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateProjectParamsCopyWith<CreateProjectParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProjectParamsCopyWith<$Res> {
  factory $CreateProjectParamsCopyWith(
          CreateProjectParams value, $Res Function(CreateProjectParams) then) =
      _$CreateProjectParamsCopyWithImpl<$Res, CreateProjectParams>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$CreateProjectParamsCopyWithImpl<$Res, $Val extends CreateProjectParams>
    implements $CreateProjectParamsCopyWith<$Res> {
  _$CreateProjectParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CreateProjectParamsImplCopyWith<$Res>
    implements $CreateProjectParamsCopyWith<$Res> {
  factory _$$CreateProjectParamsImplCopyWith(_$CreateProjectParamsImpl value,
          $Res Function(_$CreateProjectParamsImpl) then) =
      __$$CreateProjectParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$CreateProjectParamsImplCopyWithImpl<$Res>
    extends _$CreateProjectParamsCopyWithImpl<$Res, _$CreateProjectParamsImpl>
    implements _$$CreateProjectParamsImplCopyWith<$Res> {
  __$$CreateProjectParamsImplCopyWithImpl(_$CreateProjectParamsImpl _value,
      $Res Function(_$CreateProjectParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$CreateProjectParamsImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CreateProjectParamsImpl implements _CreateProjectParams {
  const _$CreateProjectParamsImpl({required this.name});

  factory _$CreateProjectParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CreateProjectParamsImplFromJson(json);

  @override
  final String name;

  @override
  String toString() {
    return 'CreateProjectParams(name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProjectParamsImpl &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProjectParamsImplCopyWith<_$CreateProjectParamsImpl> get copyWith =>
      __$$CreateProjectParamsImplCopyWithImpl<_$CreateProjectParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CreateProjectParamsImplToJson(
      this,
    );
  }
}

abstract class _CreateProjectParams implements CreateProjectParams {
  const factory _CreateProjectParams({required final String name}) =
      _$CreateProjectParamsImpl;

  factory _CreateProjectParams.fromJson(Map<String, dynamic> json) =
      _$CreateProjectParamsImpl.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$CreateProjectParamsImplCopyWith<_$CreateProjectParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
