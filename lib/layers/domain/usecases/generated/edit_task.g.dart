// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../edit_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EditTaskParamsImpl _$$EditTaskParamsImplFromJson(Map<String, dynamic> json) =>
    _$EditTaskParamsImpl(
      taskId: json['task_id'] as String,
      content: json['content'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$EditTaskParamsImplToJson(
        _$EditTaskParamsImpl instance) =>
    <String, dynamic>{
      'task_id': instance.taskId,
      'content': instance.content,
      'description': instance.description,
    };
