import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/tasks_entity.dart';
import 'schemas/task.dart';

part 'generated/task_response.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class TaskResponse with _$TaskResponse {
  const TaskResponse._();

  const factory TaskResponse({Task? task}) = _TaskResponse;

  factory TaskResponse.fromJson(Map<String, dynamic> json) => TaskResponse(
        task: Task.fromJson(json),
      );

  TaskEntity toEntity() => TaskEntity(
      content: task?.content,
      createdAt: task?.createdAt,
      description: task?.description,
      id: task?.id,
      order: task?.order,
      projectId: task?.projectId,
      sectionId: task?.sectionId);
}
