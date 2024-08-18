import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/tasks_entity.dart';
import 'schemas/task.dart';

part 'generated/get_tasks_response.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class GetTasksResponse with _$GetTasksResponse {
  const GetTasksResponse._();

  const factory GetTasksResponse({List<Task>? tasks}) = _GetTasksResponse;

  factory GetTasksResponse.fromJson(List json) => GetTasksResponse(
        tasks: (json).map((taskJson) => Task.fromJson(taskJson)).toList(),
      );

  TasksEntity toEntity() => TasksEntity(
        tasks!
            .map(
              (e) => TaskEntity(
                  id: e.id,
                  content: e.content,
                  commentCount: e.commentCount,
                  createdAt: e.createdAt,
                  description: e.description,
                  order: e.order,
                  projectId: e.projectId,
                  sectionId: e.sectionId),
            )
            .toList(),
      );
}
