// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../close_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CloseTaskParams _$CloseTaskParamsFromJson(Map<String, dynamic> json) {
  return _CloseTaskParams.fromJson(json);
}

/// @nodoc
mixin _$CloseTaskParams {
// @JsonKey(name: "items") required ItemParams items,
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "date_completed")
  String get dateCompleted => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CloseTaskParamsCopyWith<CloseTaskParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CloseTaskParamsCopyWith<$Res> {
  factory $CloseTaskParamsCopyWith(
          CloseTaskParams value, $Res Function(CloseTaskParams) then) =
      _$CloseTaskParamsCopyWithImpl<$Res, CloseTaskParams>;
  @useResult
  $Res call({String id, @JsonKey(name: "date_completed") String dateCompleted});
}

/// @nodoc
class _$CloseTaskParamsCopyWithImpl<$Res, $Val extends CloseTaskParams>
    implements $CloseTaskParamsCopyWith<$Res> {
  _$CloseTaskParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateCompleted = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dateCompleted: null == dateCompleted
          ? _value.dateCompleted
          : dateCompleted // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CloseTaskParamsImplCopyWith<$Res>
    implements $CloseTaskParamsCopyWith<$Res> {
  factory _$$CloseTaskParamsImplCopyWith(_$CloseTaskParamsImpl value,
          $Res Function(_$CloseTaskParamsImpl) then) =
      __$$CloseTaskParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, @JsonKey(name: "date_completed") String dateCompleted});
}

/// @nodoc
class __$$CloseTaskParamsImplCopyWithImpl<$Res>
    extends _$CloseTaskParamsCopyWithImpl<$Res, _$CloseTaskParamsImpl>
    implements _$$CloseTaskParamsImplCopyWith<$Res> {
  __$$CloseTaskParamsImplCopyWithImpl(
      _$CloseTaskParamsImpl _value, $Res Function(_$CloseTaskParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? dateCompleted = null,
  }) {
    return _then(_$CloseTaskParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      dateCompleted: null == dateCompleted
          ? _value.dateCompleted
          : dateCompleted // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CloseTaskParamsImpl implements _CloseTaskParams {
  const _$CloseTaskParamsImpl(
      {required this.id,
      @JsonKey(name: "date_completed") required this.dateCompleted});

  factory _$CloseTaskParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$CloseTaskParamsImplFromJson(json);

// @JsonKey(name: "items") required ItemParams items,
  @override
  final String id;
  @override
  @JsonKey(name: "date_completed")
  final String dateCompleted;

  @override
  String toString() {
    return 'CloseTaskParams(id: $id, dateCompleted: $dateCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CloseTaskParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dateCompleted, dateCompleted) ||
                other.dateCompleted == dateCompleted));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, dateCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CloseTaskParamsImplCopyWith<_$CloseTaskParamsImpl> get copyWith =>
      __$$CloseTaskParamsImplCopyWithImpl<_$CloseTaskParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CloseTaskParamsImplToJson(
      this,
    );
  }
}

abstract class _CloseTaskParams implements CloseTaskParams {
  const factory _CloseTaskParams(
      {required final String id,
      @JsonKey(name: "date_completed")
      required final String dateCompleted}) = _$CloseTaskParamsImpl;

  factory _CloseTaskParams.fromJson(Map<String, dynamic> json) =
      _$CloseTaskParamsImpl.fromJson;

  @override // @JsonKey(name: "items") required ItemParams items,
  String get id;
  @override
  @JsonKey(name: "date_completed")
  String get dateCompleted;
  @override
  @JsonKey(ignore: true)
  _$$CloseTaskParamsImplCopyWith<_$CloseTaskParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
