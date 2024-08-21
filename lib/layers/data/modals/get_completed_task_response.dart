import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/tasks_entity.dart';
import 'schemas/task.dart';

part 'generated/get_completed_task_response.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class GetCompletedTaskresponse with _$GetCompletedTaskresponse {
  const GetCompletedTaskresponse._();

  const factory GetCompletedTaskresponse({List<Task>? tasks}) =
      _GetCompletedTaskresponse;

  factory GetCompletedTaskresponse.fromJson(Map<String, dynamic> json) {
    return GetCompletedTaskresponse(
      tasks: (json['items'] as List)
          .map((taskJson) => Task.fromJson(taskJson))
          .toList(),
    );
  }

  TasksEntity toEntity() => TasksEntity(
        tasks!
            .map(
              (e) => TaskEntity(
                  id: e.id,
                  content: e.content,
                  completedAt: e.completedAt,
                  commentCount: e.commentCount,
                  createdAt: e.createdAt,
                  description: e.description,
                  order: e.order,
                  isCompleted: e.isCompleted,
                  projectId: e.projectId,
                  sectionId: e.sectionId),
            )
            .toList(),
      );
}
