// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../projects_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ProjectEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectEntityCopyWith<ProjectEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectEntityCopyWith<$Res> {
  factory $ProjectEntityCopyWith(
          ProjectEntity value, $Res Function(ProjectEntity) then) =
      _$ProjectEntityCopyWithImpl<$Res, ProjectEntity>;
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class _$ProjectEntityCopyWithImpl<$Res, $Val extends ProjectEntity>
    implements $ProjectEntityCopyWith<$Res> {
  _$ProjectEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ProjectEntityImplCopyWith<$Res>
    implements $ProjectEntityCopyWith<$Res> {
  factory _$$ProjectEntityImplCopyWith(
          _$ProjectEntityImpl value, $Res Function(_$ProjectEntityImpl) then) =
      __$$ProjectEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? name});
}

/// @nodoc
class __$$ProjectEntityImplCopyWithImpl<$Res>
    extends _$ProjectEntityCopyWithImpl<$Res, _$ProjectEntityImpl>
    implements _$$ProjectEntityImplCopyWith<$Res> {
  __$$ProjectEntityImplCopyWithImpl(
      _$ProjectEntityImpl _value, $Res Function(_$ProjectEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_$ProjectEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ProjectEntityImpl implements _ProjectEntity {
  const _$ProjectEntityImpl({this.id, this.name});

  @override
  final String? id;
  @override
  final String? name;

  @override
  String toString() {
    return 'ProjectEntity(id: $id, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ProjectEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ProjectEntityImplCopyWith<_$ProjectEntityImpl> get copyWith =>
      __$$ProjectEntityImplCopyWithImpl<_$ProjectEntityImpl>(this, _$identity);
}

abstract class _ProjectEntity implements ProjectEntity {
  const factory _ProjectEntity({final String? id, final String? name}) =
      _$ProjectEntityImpl;

  @override
  String? get id;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$ProjectEntityImplCopyWith<_$ProjectEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ProjectsEntity {
  List<ProjectEntity>? get projects => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProjectsEntityCopyWith<ProjectsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProjectsEntityCopyWith<$Res> {
  factory $ProjectsEntityCopyWith(
          ProjectsEntity value, $Res Function(ProjectsEntity) then) =
      _$ProjectsEntityCopyWithImpl<$Res, ProjectsEntity>;
  @useResult
  $Res call({List<ProjectEntity>? projects});
}

/// @nodoc
class _$ProjectsEntityCopyWithImpl<$Res, $Val extends ProjectsEntity>
    implements $ProjectsEntityCopyWith<$Res> {
  _$ProjectsEntityCopyWithImpl(this._value, this._then);

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
              as List<ProjectEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandsEntityImplCopyWith<$Res>
    implements $ProjectsEntityCopyWith<$Res> {
  factory _$$BrandsEntityImplCopyWith(
          _$BrandsEntityImpl value, $Res Function(_$BrandsEntityImpl) then) =
      __$$BrandsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ProjectEntity>? projects});
}

/// @nodoc
class __$$BrandsEntityImplCopyWithImpl<$Res>
    extends _$ProjectsEntityCopyWithImpl<$Res, _$BrandsEntityImpl>
    implements _$$BrandsEntityImplCopyWith<$Res> {
  __$$BrandsEntityImplCopyWithImpl(
      _$BrandsEntityImpl _value, $Res Function(_$BrandsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? projects = freezed,
  }) {
    return _then(_$BrandsEntityImpl(
      projects: freezed == projects
          ? _value._projects
          : projects // ignore: cast_nullable_to_non_nullable
              as List<ProjectEntity>?,
    ));
  }
}

/// @nodoc

class _$BrandsEntityImpl implements _BrandsEntity {
  const _$BrandsEntityImpl({final List<ProjectEntity>? projects})
      : _projects = projects;

  final List<ProjectEntity>? _projects;
  @override
  List<ProjectEntity>? get projects {
    final value = _projects;
    if (value == null) return null;
    if (_projects is EqualUnmodifiableListView) return _projects;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ProjectsEntity(projects: $projects)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandsEntityImpl &&
            const DeepCollectionEquality().equals(other._projects, _projects));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_projects));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandsEntityImplCopyWith<_$BrandsEntityImpl> get copyWith =>
      __$$BrandsEntityImplCopyWithImpl<_$BrandsEntityImpl>(this, _$identity);
}

abstract class _BrandsEntity implements ProjectsEntity {
  const factory _BrandsEntity({final List<ProjectEntity>? projects}) =
      _$BrandsEntityImpl;

  @override
  List<ProjectEntity>? get projects;
  @override
  @JsonKey(ignore: true)
  _$$BrandsEntityImplCopyWith<_$BrandsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
