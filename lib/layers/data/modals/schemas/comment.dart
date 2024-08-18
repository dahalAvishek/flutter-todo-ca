// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/comment.freezed.dart';
part 'generated/comment.g.dart';

@Freezed(toJson: false)
class Comment with _$Comment {
  const factory Comment({
    String? id,
    @JsonKey(name: "project_id") String? projectId,
    @JsonKey(name: "task_id") String? taskId,
    @JsonKey(name: "posted_at") String? postedAt,
    String? content,
  }) = _Comment;

  const Comment._();

  factory Comment.fromJson(Map<String, dynamic> json) =>
      _$CommentFromJson(json);
}
