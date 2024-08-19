// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../reorder_task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ReorderTasksParams _$ReorderTasksParamsFromJson(Map<String, dynamic> json) {
  return _ReorderTasksParams.fromJson(json);
}

/// @nodoc
mixin _$ReorderTasksParams {
  @JsonKey(name: "items")
  ItemParams get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ReorderTasksParamsCopyWith<ReorderTasksParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReorderTasksParamsCopyWith<$Res> {
  factory $ReorderTasksParamsCopyWith(
          ReorderTasksParams value, $Res Function(ReorderTasksParams) then) =
      _$ReorderTasksParamsCopyWithImpl<$Res, ReorderTasksParams>;
  @useResult
  $Res call({@JsonKey(name: "items") ItemParams items});

  $ItemParamsCopyWith<$Res> get items;
}

/// @nodoc
class _$ReorderTasksParamsCopyWithImpl<$Res, $Val extends ReorderTasksParams>
    implements $ReorderTasksParamsCopyWith<$Res> {
  _$ReorderTasksParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as ItemParams,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ItemParamsCopyWith<$Res> get items {
    return $ItemParamsCopyWith<$Res>(_value.items, (value) {
      return _then(_value.copyWith(items: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$ReorderTasksParamsImplCopyWith<$Res>
    implements $ReorderTasksParamsCopyWith<$Res> {
  factory _$$ReorderTasksParamsImplCopyWith(_$ReorderTasksParamsImpl value,
          $Res Function(_$ReorderTasksParamsImpl) then) =
      __$$ReorderTasksParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "items") ItemParams items});

  @override
  $ItemParamsCopyWith<$Res> get items;
}

/// @nodoc
class __$$ReorderTasksParamsImplCopyWithImpl<$Res>
    extends _$ReorderTasksParamsCopyWithImpl<$Res, _$ReorderTasksParamsImpl>
    implements _$$ReorderTasksParamsImplCopyWith<$Res> {
  __$$ReorderTasksParamsImplCopyWithImpl(_$ReorderTasksParamsImpl _value,
      $Res Function(_$ReorderTasksParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? items = null,
  }) {
    return _then(_$ReorderTasksParamsImpl(
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as ItemParams,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ReorderTasksParamsImpl implements _ReorderTasksParams {
  const _$ReorderTasksParamsImpl({@JsonKey(name: "items") required this.items});

  factory _$ReorderTasksParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ReorderTasksParamsImplFromJson(json);

  @override
  @JsonKey(name: "items")
  final ItemParams items;

  @override
  String toString() {
    return 'ReorderTasksParams(items: $items)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReorderTasksParamsImpl &&
            (identical(other.items, items) || other.items == items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, items);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReorderTasksParamsImplCopyWith<_$ReorderTasksParamsImpl> get copyWith =>
      __$$ReorderTasksParamsImplCopyWithImpl<_$ReorderTasksParamsImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ReorderTasksParamsImplToJson(
      this,
    );
  }
}

abstract class _ReorderTasksParams implements ReorderTasksParams {
  const factory _ReorderTasksParams(
          {@JsonKey(name: "items") required final ItemParams items}) =
      _$ReorderTasksParamsImpl;

  factory _ReorderTasksParams.fromJson(Map<String, dynamic> json) =
      _$ReorderTasksParamsImpl.fromJson;

  @override
  @JsonKey(name: "items")
  ItemParams get items;
  @override
  @JsonKey(ignore: true)
  _$$ReorderTasksParamsImplCopyWith<_$ReorderTasksParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemParams _$ItemParamsFromJson(Map<String, dynamic> json) {
  return _ItemParams.fromJson(json);
}

/// @nodoc
mixin _$ItemParams {
  String get id => throw _privateConstructorUsedError;
  @JsonKey(name: "child_order")
  num get childOrder => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemParamsCopyWith<ItemParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemParamsCopyWith<$Res> {
  factory $ItemParamsCopyWith(
          ItemParams value, $Res Function(ItemParams) then) =
      _$ItemParamsCopyWithImpl<$Res, ItemParams>;
  @useResult
  $Res call({String id, @JsonKey(name: "child_order") num childOrder});
}

/// @nodoc
class _$ItemParamsCopyWithImpl<$Res, $Val extends ItemParams>
    implements $ItemParamsCopyWith<$Res> {
  _$ItemParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? childOrder = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      childOrder: null == childOrder
          ? _value.childOrder
          : childOrder // ignore: cast_nullable_to_non_nullable
              as num,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ItemParamsImplCopyWith<$Res>
    implements $ItemParamsCopyWith<$Res> {
  factory _$$ItemParamsImplCopyWith(
          _$ItemParamsImpl value, $Res Function(_$ItemParamsImpl) then) =
      __$$ItemParamsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String id, @JsonKey(name: "child_order") num childOrder});
}

/// @nodoc
class __$$ItemParamsImplCopyWithImpl<$Res>
    extends _$ItemParamsCopyWithImpl<$Res, _$ItemParamsImpl>
    implements _$$ItemParamsImplCopyWith<$Res> {
  __$$ItemParamsImplCopyWithImpl(
      _$ItemParamsImpl _value, $Res Function(_$ItemParamsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? childOrder = null,
  }) {
    return _then(_$ItemParamsImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      childOrder: null == childOrder
          ? _value.childOrder
          : childOrder // ignore: cast_nullable_to_non_nullable
              as num,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ItemParamsImpl implements _ItemParams {
  const _$ItemParamsImpl(
      {required this.id,
      @JsonKey(name: "child_order") required this.childOrder});

  factory _$ItemParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$ItemParamsImplFromJson(json);

  @override
  final String id;
  @override
  @JsonKey(name: "child_order")
  final num childOrder;

  @override
  String toString() {
    return 'ItemParams(id: $id, childOrder: $childOrder)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ItemParamsImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.childOrder, childOrder) ||
                other.childOrder == childOrder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, childOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ItemParamsImplCopyWith<_$ItemParamsImpl> get copyWith =>
      __$$ItemParamsImplCopyWithImpl<_$ItemParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ItemParamsImplToJson(
      this,
    );
  }
}

abstract class _ItemParams implements ItemParams {
  const factory _ItemParams(
          {required final String id,
          @JsonKey(name: "child_order") required final num childOrder}) =
      _$ItemParamsImpl;

  factory _ItemParams.fromJson(Map<String, dynamic> json) =
      _$ItemParamsImpl.fromJson;

  @override
  String get id;
  @override
  @JsonKey(name: "child_order")
  num get childOrder;
  @override
  @JsonKey(ignore: true)
  _$$ItemParamsImplCopyWith<_$ItemParamsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
