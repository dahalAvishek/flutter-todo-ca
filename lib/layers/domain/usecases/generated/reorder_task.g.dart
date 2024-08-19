// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../reorder_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ReorderTasksParamsImpl _$$ReorderTasksParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$ReorderTasksParamsImpl(
      items: ItemParams.fromJson(json['items'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$ReorderTasksParamsImplToJson(
        _$ReorderTasksParamsImpl instance) =>
    <String, dynamic>{
      'items': instance.items,
    };

_$ItemParamsImpl _$$ItemParamsImplFromJson(Map<String, dynamic> json) =>
    _$ItemParamsImpl(
      id: json['id'] as String,
      childOrder: json['child_order'] as num,
    );

Map<String, dynamic> _$$ItemParamsImplToJson(_$ItemParamsImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'child_order': instance.childOrder,
    };
