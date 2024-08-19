// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../sync_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SyncResponse {
  Map<String, String>? get syncStatus => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SyncResponseCopyWith<SyncResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SyncResponseCopyWith<$Res> {
  factory $SyncResponseCopyWith(
          SyncResponse value, $Res Function(SyncResponse) then) =
      _$SyncResponseCopyWithImpl<$Res, SyncResponse>;
  @useResult
  $Res call({Map<String, String>? syncStatus});
}

/// @nodoc
class _$SyncResponseCopyWithImpl<$Res, $Val extends SyncResponse>
    implements $SyncResponseCopyWith<$Res> {
  _$SyncResponseCopyWithImpl(this._value, this._then);

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
              as Map<String, String>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SyncResponseImplCopyWith<$Res>
    implements $SyncResponseCopyWith<$Res> {
  factory _$$SyncResponseImplCopyWith(
          _$SyncResponseImpl value, $Res Function(_$SyncResponseImpl) then) =
      __$$SyncResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, String>? syncStatus});
}

/// @nodoc
class __$$SyncResponseImplCopyWithImpl<$Res>
    extends _$SyncResponseCopyWithImpl<$Res, _$SyncResponseImpl>
    implements _$$SyncResponseImplCopyWith<$Res> {
  __$$SyncResponseImplCopyWithImpl(
      _$SyncResponseImpl _value, $Res Function(_$SyncResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? syncStatus = freezed,
  }) {
    return _then(_$SyncResponseImpl(
      syncStatus: freezed == syncStatus
          ? _value._syncStatus
          : syncStatus // ignore: cast_nullable_to_non_nullable
              as Map<String, String>?,
    ));
  }
}

/// @nodoc

class _$SyncResponseImpl extends _SyncResponse {
  const _$SyncResponseImpl({final Map<String, String>? syncStatus})
      : _syncStatus = syncStatus,
        super._();

  final Map<String, String>? _syncStatus;
  @override
  Map<String, String>? get syncStatus {
    final value = _syncStatus;
    if (value == null) return null;
    if (_syncStatus is EqualUnmodifiableMapView) return _syncStatus;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'SyncResponse(syncStatus: $syncStatus)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SyncResponseImpl &&
            const DeepCollectionEquality()
                .equals(other._syncStatus, _syncStatus));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_syncStatus));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SyncResponseImplCopyWith<_$SyncResponseImpl> get copyWith =>
      __$$SyncResponseImplCopyWithImpl<_$SyncResponseImpl>(this, _$identity);
}

abstract class _SyncResponse extends SyncResponse {
  const factory _SyncResponse({final Map<String, String>? syncStatus}) =
      _$SyncResponseImpl;
  const _SyncResponse._() : super._();

  @override
  Map<String, String>? get syncStatus;
  @override
  @JsonKey(ignore: true)
  _$$SyncResponseImplCopyWith<_$SyncResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
