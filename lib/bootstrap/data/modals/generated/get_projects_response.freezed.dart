// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../get_projects_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetProjectsResponse {
  List<Project>? get projects => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetProjectsResponseCopyWith<GetProjectsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetProjectsResponseCopyWith<$Res> {
  factory $GetProjectsResponseCopyWith(
          GetProjectsResponse value, $Res Function(GetProjectsResponse) then) =
      _$GetProjectsResponseCopyWithImpl<$Res, GetProjectsResponse>;
  @useResult
  $Res call({List<Project>? projects});
}

/// @nodoc
class _$GetProjectsResponseCopyWithImpl<$Res, $Val extends GetProjectsResponse>
    implements $GetProjectsResponseCopyWith<$Res> {
  _$GetProjectsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = freezed,
  }) {
    return _then(_value.copyWith(
      projects: freezed == projects
          ? _value.projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetProjectsResponseImplCopyWith<$Res>
    implements $GetProjectsResponseCopyWith<$Res> {
  factory _$$GetProjectsResponseImplCopyWith(_$GetProjectsResponseImpl value,
          $Res Function(_$GetProjectsResponseImpl) then) =
      __$$GetProjectsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Project>? projects});
}

/// @nodoc
class __$$GetProjectsResponseImplCopyWithImpl<$Res>
    extends _$GetProjectsResponseCopyWithImpl<$Res, _$GetProjectsResponseImpl>
    implements _$$GetProjectsResponseImplCopyWith<$Res> {
  __$$GetProjectsResponseImplCopyWithImpl(_$GetProjectsResponseImpl _value,
      $Res Function(_$GetProjectsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = freezed,
  }) {
    return _then(_$GetProjectsResponseImpl(
      projects: freezed == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<Project>?,
    ));
  }
}

/// @nodoc

class _$GetProjectsResponseImpl extends _GetProjectsResponse {
  const _$GetProjectsResponseImpl({final List<Project>? projects})
      : _projects = projects,
        super._();

  final List<Project>? _projects;
  @override
  List<Project>? get projects {
    final value = _projects;
    if (value == null) return null;
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetProjectsResponse(projects: $projects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetProjectsResponseImpl &&
            const DeepCollectionEquality().equals(other._projects, _projects));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_projects));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetProjectsResponseImplCopyWith<_$GetProjectsResponseImpl> get copyWith =>
      __$$GetProjectsResponseImplCopyWithImpl<_$GetProjectsResponseImpl>(
          this, _$identity);
}

abstract class _GetProjectsResponse extends GetProjectsResponse {
  const factory _GetProjectsResponse({final List<Project>? projects}) =
      _$GetProjectsResponseImpl;
  const _GetProjectsResponse._() : super._();

  @override
  List<Project>? get projects;
  @override
  @JsonKey(ignore: true)
  _$$GetProjectsResponseImplCopyWith<_$GetProjectsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
