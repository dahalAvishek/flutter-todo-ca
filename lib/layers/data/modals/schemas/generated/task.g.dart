// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      id: json['id'] as String?,
      projectId: json['project_id'] as String?,
      sectionId: json['section_id'] as String?,
      commentCount: (json['comment_count'] as num?)?.toInt(),
      isCompleted: json['is_completed'] as bool?,
      createdAt: json['created_at'] as String?,
      content: json['content'] as String?,
      description: json['description'] as String?,
      order: (json['order'] as num?)?.toInt(),
      name: json['name'] as String?,
    );
