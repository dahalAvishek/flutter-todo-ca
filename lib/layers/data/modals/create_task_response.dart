import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/tasks_entity.dart';
import 'schemas/task.dart';

part 'generated/create_task_response.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class CreateTasksResponse with _$CreateTasksResponse {
  const CreateTasksResponse._();

  const factory CreateTasksResponse({Task? task}) = _CreateTasksResponse;

  factory CreateTasksResponse.fromJson(Map<String, dynamic> json) =>
      CreateTasksResponse(
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
