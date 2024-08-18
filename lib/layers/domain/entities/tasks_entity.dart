import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/tasks_entity.freezed.dart';

@freezed
class TaskEntity with _$TaskEntity {
  const factory TaskEntity({
    String? id,
    String? projectId,
    String? sectionId,
    int? order,
    int? commentCount,
    String? content,
    String? description,
    String? createdAt,
  }) = _TaskEntity;
}

@freezed
class TasksEntity with _$TasksEntity {
  const factory TasksEntity(List<TaskEntity>? task) = _TasksEntity;
}
