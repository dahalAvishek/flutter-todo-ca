// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../create_task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateTaskParamsImpl _$$CreateTaskParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateTaskParamsImpl(
      sectionId: json['section_id'] as String,
      projectId: json['project_id'] as String,
      content: json['content'] as String,
      description: json['description'] as String?,
    );

Map<String, dynamic> _$$CreateTaskParamsImplToJson(
        _$CreateTaskParamsImpl instance) =>
    <String, dynamic>{
      'section_id': instance.sectionId,
      'project_id': instance.projectId,
      'content': instance.content,
      'description': instance.description,
    };
