// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../move_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MoveTasksParams _$MoveTasksParamsFromJson(Map<String, dynamic> json) {
  return _MoveTasksParams.fromJson(json);
}

/// @nodoc
mixin _$MoveTasksParams {
// @JsonKey(name: "items") required ItemParams items,
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "section_id")
  String get sectionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MoveTasksParamsCopyWith<MoveTasksParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MoveTasksParamsCopyWith<$Res> {
  factory $MoveTasksParamsCopyWith(
          MoveTasksParams value, $Res Function(MoveTasksParams) then) =
      _$MoveTasksParamsCopyWithImpl<$Res, MoveTasksParams>;
  @useResult
  $Res call({String id, @JsonKey(name: "section_id") String sectionId});
}

/// @nodoc
class _$MoveTasksParamsCopyWithImpl<$Res, $Val extends MoveTasksParams>
    implements $MoveTasksParamsCopyWith<$Res> {
  _$MoveTasksParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sectionId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sectionId: null == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MoveTasksParamsImplCopyWith<$Res>
    implements $MoveTasksParamsCopyWith<$Res> {
  factory _$$MoveTasksParamsImplCopyWith(_$MoveTasksParamsImpl value,
          $Res Function(_$MoveTasksParamsImpl) then) =
      __$$MoveTasksParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, @JsonKey(name: "section_id") String sectionId});
}

/// @nodoc
class __$$MoveTasksParamsImplCopyWithImpl<$Res>
    extends _$MoveTasksParamsCopyWithImpl<$Res, _$MoveTasksParamsImpl>
    implements _$$MoveTasksParamsImplCopyWith<$Res> {
  __$$MoveTasksParamsImplCopyWithImpl(
      _$MoveTasksParamsImpl _value, $Res Function(_$MoveTasksParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? sectionId = null,
  }) {
    return _then(_$MoveTasksParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      sectionId: null == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MoveTasksParamsImpl implements _MoveTasksParams {
  const _$MoveTasksParamsImpl(
      {required this.id, @JsonKey(name: "section_id") required this.sectionId});

  factory _$MoveTasksParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$MoveTasksParamsImplFromJson(json);

// @JsonKey(name: "items") required ItemParams items,
  @override
  final String id;
  @override
  @JsonKey(name: "section_id")
  final String sectionId;

  @override
  String toString() {
    return 'MoveTasksParams(id: $id, sectionId: $sectionId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MoveTasksParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.sectionId, sectionId) ||
                other.sectionId == sectionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, sectionId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MoveTasksParamsImplCopyWith<_$MoveTasksParamsImpl> get copyWith =>
      __$$MoveTasksParamsImplCopyWithImpl<_$MoveTasksParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MoveTasksParamsImplToJson(
      this,
    );
  }
}

abstract class _MoveTasksParams implements MoveTasksParams {
  const factory _MoveTasksParams(
          {required final String id,
          @JsonKey(name: "section_id") required final String sectionId}) =
      _$MoveTasksParamsImpl;

  factory _MoveTasksParams.fromJson(Map<String, dynamic> json) =
      _$MoveTasksParamsImpl.fromJson;

  @override // @JsonKey(name: "items") required ItemParams items,
  String get id;
  @override
  @JsonKey(name: "section_id")
  String get sectionId;
  @override
  @JsonKey(ignore: true)
  _$$MoveTasksParamsImplCopyWith<_$MoveTasksParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
