// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/task.freezed.dart';
part 'generated/task.g.dart';

@Freezed(toJson: false)
class Task with _$Task {
  const factory Task({
    String? id,
    @JsonKey(name: "project_id") String? projectId,
    @JsonKey(name: "section_id") String? sectionId,
    @JsonKey(name: "comment_count") int? commentCount,
    @JsonKey(name: "is_completed") bool? isCompleted,
    @JsonKey(name: "created_at") String? createdAt,
    @JsonKey(name: "completed_at") String? completedAt,
    @JsonKey(name: "task_id") String? taskId,
    String? content,
    String? description,
    int? order,
    String? name,
  }) = _Task;

  const Task._();

  factory Task.fromJson(Map<String, dynamic> json) => _$TaskFromJson(json);
}
