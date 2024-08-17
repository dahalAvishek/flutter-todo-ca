// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../section_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SectionEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get projectId => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SectionEntityCopyWith<SectionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionEntityCopyWith<$Res> {
  factory $SectionEntityCopyWith(
          SectionEntity value, $Res Function(SectionEntity) then) =
      _$SectionEntityCopyWithImpl<$Res, SectionEntity>;
  @useResult
  $Res call({String? id, String? projectId, int? order, String? name});
}

/// @nodoc
class _$SectionEntityCopyWithImpl<$Res, $Val extends SectionEntity>
    implements $SectionEntityCopyWith<$Res> {
  _$SectionEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? projectId = freezed,
    Object? order = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SectionEntityImplCopyWith<$Res>
    implements $SectionEntityCopyWith<$Res> {
  factory _$$SectionEntityImplCopyWith(
          _$SectionEntityImpl value, $Res Function(_$SectionEntityImpl) then) =
      __$$SectionEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? id, String? projectId, int? order, String? name});
}

/// @nodoc
class __$$SectionEntityImplCopyWithImpl<$Res>
    extends _$SectionEntityCopyWithImpl<$Res, _$SectionEntityImpl>
    implements _$$SectionEntityImplCopyWith<$Res> {
  __$$SectionEntityImplCopyWithImpl(
      _$SectionEntityImpl _value, $Res Function(_$SectionEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? projectId = freezed,
    Object? order = freezed,
    Object? name = freezed,
  }) {
    return _then(_$SectionEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$SectionEntityImpl implements _SectionEntity {
  const _$SectionEntityImpl({this.id, this.projectId, this.order, this.name});

  @override
  final String? id;
  @override
  final String? projectId;
  @override
  final int? order;
  @override
  final String? name;

  @override
  String toString() {
    return 'SectionEntity(id: $id, projectId: $projectId, order: $order, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SectionEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, projectId, order, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SectionEntityImplCopyWith<_$SectionEntityImpl> get copyWith =>
      __$$SectionEntityImplCopyWithImpl<_$SectionEntityImpl>(this, _$identity);
}

abstract class _SectionEntity implements SectionEntity {
  const factory _SectionEntity(
      {final String? id,
      final String? projectId,
      final int? order,
      final String? name}) = _$SectionEntityImpl;

  @override
  String? get id;
  @override
  String? get projectId;
  @override
  int? get order;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$SectionEntityImplCopyWith<_$SectionEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SectionsEntity {
  List<SectionEntity>? get sections => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SectionsEntityCopyWith<SectionsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SectionsEntityCopyWith<$Res> {
  factory $SectionsEntityCopyWith(
          SectionsEntity value, $Res Function(SectionsEntity) then) =
      _$SectionsEntityCopyWithImpl<$Res, SectionsEntity>;
  @useResult
  $Res call({List<SectionEntity>? sections});
}

/// @nodoc
class _$SectionsEntityCopyWithImpl<$Res, $Val extends SectionsEntity>
    implements $SectionsEntityCopyWith<$Res> {
  _$SectionsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sections = freezed,
  }) {
    return _then(_value.copyWith(
      sections: freezed == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<SectionEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BrandsEntityImplCopyWith<$Res>
    implements $SectionsEntityCopyWith<$Res> {
  factory _$$BrandsEntityImplCopyWith(
          _$BrandsEntityImpl value, $Res Function(_$BrandsEntityImpl) then) =
      __$$BrandsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<SectionEntity>? sections});
}

/// @nodoc
class __$$BrandsEntityImplCopyWithImpl<$Res>
    extends _$SectionsEntityCopyWithImpl<$Res, _$BrandsEntityImpl>
    implements _$$BrandsEntityImplCopyWith<$Res> {
  __$$BrandsEntityImplCopyWithImpl(
      _$BrandsEntityImpl _value, $Res Function(_$BrandsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sections = freezed,
  }) {
    return _then(_$BrandsEntityImpl(
      sections: freezed == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<SectionEntity>?,
    ));
  }
}

/// @nodoc

class _$BrandsEntityImpl implements _BrandsEntity {
  const _$BrandsEntityImpl({final List<SectionEntity>? sections})
      : _sections = sections;

  final List<SectionEntity>? _sections;
  @override
  List<SectionEntity>? get sections {
    final value = _sections;
    if (value == null) return null;
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'SectionsEntity(sections: $sections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BrandsEntityImpl &&
            const DeepCollectionEquality().equals(other._sections, _sections));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sections));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$BrandsEntityImplCopyWith<_$BrandsEntityImpl> get copyWith =>
      __$$BrandsEntityImplCopyWithImpl<_$BrandsEntityImpl>(this, _$identity);
}

abstract class _BrandsEntity implements SectionsEntity {
  const factory _BrandsEntity({final List<SectionEntity>? sections}) =
      _$BrandsEntityImpl;

  @override
  List<SectionEntity>? get sections;
  @override
  @JsonKey(ignore: true)
  _$$BrandsEntityImplCopyWith<_$BrandsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
