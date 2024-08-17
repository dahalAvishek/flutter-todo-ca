// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../create_project_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateProjectResponse {
  Project? get project => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateProjectResponseCopyWith<CreateProjectResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProjectResponseCopyWith<$Res> {
  factory $CreateProjectResponseCopyWith(CreateProjectResponse value,
          $Res Function(CreateProjectResponse) then) =
      _$CreateProjectResponseCopyWithImpl<$Res, CreateProjectResponse>;
  @useResult
  $Res call({Project? project});

  $ProjectCopyWith<$Res>? get project;
}

/// @nodoc
class _$CreateProjectResponseCopyWithImpl<$Res,
        $Val extends CreateProjectResponse>
    implements $CreateProjectResponseCopyWith<$Res> {
  _$CreateProjectResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = freezed,
  }) {
    return _then(_value.copyWith(
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectCopyWith<$Res>? get project {
    if (_value.project == null) {
      return null;
    }

    return $ProjectCopyWith<$Res>(_value.project!, (value) {
      return _then(_value.copyWith(project: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateProjectResponseImplCopyWith<$Res>
    implements $CreateProjectResponseCopyWith<$Res> {
  factory _$$CreateProjectResponseImplCopyWith(
          _$CreateProjectResponseImpl value,
          $Res Function(_$CreateProjectResponseImpl) then) =
      __$$CreateProjectResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Project? project});

  @override
  $ProjectCopyWith<$Res>? get project;
}

/// @nodoc
class __$$CreateProjectResponseImplCopyWithImpl<$Res>
    extends _$CreateProjectResponseCopyWithImpl<$Res,
        _$CreateProjectResponseImpl>
    implements _$$CreateProjectResponseImplCopyWith<$Res> {
  __$$CreateProjectResponseImplCopyWithImpl(_$CreateProjectResponseImpl _value,
      $Res Function(_$CreateProjectResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = freezed,
  }) {
    return _then(_$CreateProjectResponseImpl(
      project: freezed == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as Project?,
    ));
  }
}

/// @nodoc

class _$CreateProjectResponseImpl extends _CreateProjectResponse {
  const _$CreateProjectResponseImpl({this.project}) : super._();

  @override
  final Project? project;

  @override
  String toString() {
    return 'CreateProjectResponse(project: $project)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateProjectResponseImpl &&
            (identical(other.project, project) || other.project == project));
  }

  @override
  int get hashCode => Object.hash(runtimeType, project);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateProjectResponseImplCopyWith<_$CreateProjectResponseImpl>
      get copyWith => __$$CreateProjectResponseImplCopyWithImpl<
          _$CreateProjectResponseImpl>(this, _$identity);
}

abstract class _CreateProjectResponse extends CreateProjectResponse {
  const factory _CreateProjectResponse({final Project? project}) =
      _$CreateProjectResponseImpl;
  const _CreateProjectResponse._() : super._();

  @override
  Project? get project;
  @override
  @JsonKey(ignore: true)
  _$$CreateProjectResponseImplCopyWith<_$CreateProjectResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
