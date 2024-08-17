// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../app_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppResponse {
  bool get isFirstTime => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppResponseCopyWith<AppResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppResponseCopyWith<$Res> {
  factory $AppResponseCopyWith(
          AppResponse value, $Res Function(AppResponse) then) =
      _$AppResponseCopyWithImpl<$Res, AppResponse>;
  @useResult
  $Res call({bool isFirstTime});
}

/// @nodoc
class _$AppResponseCopyWithImpl<$Res, $Val extends AppResponse>
    implements $AppResponseCopyWith<$Res> {
  _$AppResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFirstTime = null,
  }) {
    return _then(_value.copyWith(
      isFirstTime: null == isFirstTime
          ? _value.isFirstTime
          : isFirstTime // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AppResponseImplCopyWith<$Res>
    implements $AppResponseCopyWith<$Res> {
  factory _$$AppResponseImplCopyWith(
          _$AppResponseImpl value, $Res Function(_$AppResponseImpl) then) =
      __$$AppResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool isFirstTime});
}

/// @nodoc
class __$$AppResponseImplCopyWithImpl<$Res>
    extends _$AppResponseCopyWithImpl<$Res, _$AppResponseImpl>
    implements _$$AppResponseImplCopyWith<$Res> {
  __$$AppResponseImplCopyWithImpl(
      _$AppResponseImpl _value, $Res Function(_$AppResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isFirstTime = null,
  }) {
    return _then(_$AppResponseImpl(
      isFirstTime: null == isFirstTime
          ? _value.isFirstTime
          : isFirstTime // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$AppResponseImpl extends _AppResponse {
  const _$AppResponseImpl({required this.isFirstTime}) : super._();

  @override
  final bool isFirstTime;

  @override
  String toString() {
    return 'AppResponse(isFirstTime: $isFirstTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AppResponseImpl &&
            (identical(other.isFirstTime, isFirstTime) ||
                other.isFirstTime == isFirstTime));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isFirstTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AppResponseImplCopyWith<_$AppResponseImpl> get copyWith =>
      __$$AppResponseImplCopyWithImpl<_$AppResponseImpl>(this, _$identity);
}

abstract class _AppResponse extends AppResponse {
  const factory _AppResponse({required final bool isFirstTime}) =
      _$AppResponseImpl;
  const _AppResponse._() : super._();

  @override
  bool get isFirstTime;
  @override
  @JsonKey(ignore: true)
  _$$AppResponseImplCopyWith<_$AppResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
