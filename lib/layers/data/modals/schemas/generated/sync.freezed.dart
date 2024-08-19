// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../sync.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Sync _$SyncFromJson(Map<String, dynamic> json) {
  return _Sync.fromJson(json);
}

/// @nodoc
mixin _$Sync {
  @JsonKey(name: "sync_status")
  String? get syncStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SyncCopyWith<Sync> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SyncCopyWith<$Res> {
  factory $SyncCopyWith(Sync value, $Res Function(Sync) then) =
      _$SyncCopyWithImpl<$Res, Sync>;
  @useResult
  $Res call({@JsonKey(name: "sync_status") String? syncStatus});
}

/// @nodoc
class _$SyncCopyWithImpl<$Res, $Val extends Sync>
    implements $SyncCopyWith<$Res> {
  _$SyncCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? syncStatus = freezed,
  }) {
    return _then(_value.copyWith(
      syncStatus: freezed == syncStatus
          ? _value.syncStatus
          : syncStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SyncImplCopyWith<$Res> implements $SyncCopyWith<$Res> {
  factory _$$SyncImplCopyWith(
          _$SyncImpl value, $Res Function(_$SyncImpl) then) =
      __$$SyncImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "sync_status") String? syncStatus});
}

/// @nodoc
class __$$SyncImplCopyWithImpl<$Res>
    extends _$SyncCopyWithImpl<$Res, _$SyncImpl>
    implements _$$SyncImplCopyWith<$Res> {
  __$$SyncImplCopyWithImpl(_$SyncImpl _value, $Res Function(_$SyncImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? syncStatus = freezed,
  }) {
    return _then(_$SyncImpl(
      syncStatus: freezed == syncStatus
          ? _value.syncStatus
          : syncStatus // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$SyncImpl extends _Sync {
  const _$SyncImpl({@JsonKey(name: "sync_status") this.syncStatus}) : super._();

  factory _$SyncImpl.fromJson(Map<String, dynamic> json) =>
      _$$SyncImplFromJson(json);

  @override
  @JsonKey(name: "sync_status")
  final String? syncStatus;

  @override
  String toString() {
    return 'Sync(syncStatus: $syncStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SyncImpl &&
            (identical(other.syncStatus, syncStatus) ||
                other.syncStatus == syncStatus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, syncStatus);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SyncImplCopyWith<_$SyncImpl> get copyWith =>
      __$$SyncImplCopyWithImpl<_$SyncImpl>(this, _$identity);
}

abstract class _Sync extends Sync {
  const factory _Sync(
      {@JsonKey(name: "sync_status") final String? syncStatus}) = _$SyncImpl;
  const _Sync._() : super._();

  factory _Sync.fromJson(Map<String, dynamic> json) = _$SyncImpl.fromJson;

  @override
  @JsonKey(name: "sync_status")
  String? get syncStatus;
  @override
  @JsonKey(ignore: true)
  _$$SyncImplCopyWith<_$SyncImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
