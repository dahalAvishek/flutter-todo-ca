// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../create_comment.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CreateCommentParamsImpl _$$CreateCommentParamsImplFromJson(
        Map<String, dynamic> json) =>
    _$CreateCommentParamsImpl(
      taskId: json['task_id'] as String,
      content: json['content'] as String,
    );

Map<String, dynamic> _$$CreateCommentParamsImplToJson(
        _$CreateCommentParamsImpl instance) =>
    <String, dynamic>{
      'task_id': instance.taskId,
      'content': instance.content,
    };
