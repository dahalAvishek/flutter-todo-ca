import 'package:flutter_todo/layers/domain/entities/comment_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'schemas/comment.dart';

part 'generated/create_comment_response.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class CreateCommentResponse with _$CreateCommentResponse {
  const CreateCommentResponse._();

  const factory CreateCommentResponse({Comment? comment}) =
      _CreateCommentResponse;

  factory CreateCommentResponse.fromJson(Map<String, dynamic> json) =>
      CreateCommentResponse(
        comment: Comment.fromJson(json),
      );

  CommentEntity toEntity() => CommentEntity(
      content: comment?.content,
      createdAt: comment?.postedAt,
      id: comment?.id,
      taskId: comment?.taskId,
      projectId: comment?.projectId);
}
