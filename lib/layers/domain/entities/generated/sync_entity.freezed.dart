// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../sync_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SyncEntity {
  bool? get fullSync => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SyncEntityCopyWith<SyncEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SyncEntityCopyWith<$Res> {
  factory $SyncEntityCopyWith(
          SyncEntity value, $Res Function(SyncEntity) then) =
      _$SyncEntityCopyWithImpl<$Res, SyncEntity>;
  @useResult
  $Res call({bool? fullSync});
}

/// @nodoc
class _$SyncEntityCopyWithImpl<$Res, $Val extends SyncEntity>
    implements $SyncEntityCopyWith<$Res> {
  _$SyncEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullSync = freezed,
  }) {
    return _then(_value.copyWith(
      fullSync: freezed == fullSync
          ? _value.fullSync
          : fullSync // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SyncEntityImplCopyWith<$Res>
    implements $SyncEntityCopyWith<$Res> {
  factory _$$SyncEntityImplCopyWith(
          _$SyncEntityImpl value, $Res Function(_$SyncEntityImpl) then) =
      __$$SyncEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? fullSync});
}

/// @nodoc
class __$$SyncEntityImplCopyWithImpl<$Res>
    extends _$SyncEntityCopyWithImpl<$Res, _$SyncEntityImpl>
    implements _$$SyncEntityImplCopyWith<$Res> {
  __$$SyncEntityImplCopyWithImpl(
      _$SyncEntityImpl _value, $Res Function(_$SyncEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? fullSync = freezed,
  }) {
    return _then(_$SyncEntityImpl(
      fullSync: freezed == fullSync
          ? _value.fullSync
          : fullSync // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$SyncEntityImpl implements _SyncEntity {
  const _$SyncEntityImpl({this.fullSync});

  @override
  final bool? fullSync;

  @override
  String toString() {
    return 'SyncEntity(fullSync: $fullSync)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SyncEntityImpl &&
            (identical(other.fullSync, fullSync) ||
                other.fullSync == fullSync));
  }

  @override
  int get hashCode => Object.hash(runtimeType, fullSync);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SyncEntityImplCopyWith<_$SyncEntityImpl> get copyWith =>
      __$$SyncEntityImplCopyWithImpl<_$SyncEntityImpl>(this, _$identity);
}

abstract class _SyncEntity implements SyncEntity {
  const factory _SyncEntity({final bool? fullSync}) = _$SyncEntityImpl;

  @override
  bool? get fullSync;
  @override
  @JsonKey(ignore: true)
  _$$SyncEntityImplCopyWith<_$SyncEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
