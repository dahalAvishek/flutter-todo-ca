import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/comment_entity.dart';
import 'schemas/comment.dart';

part 'generated/get_comments_response.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class GetCommentsResponse with _$GetCommentsResponse {
  const GetCommentsResponse._();

  const factory GetCommentsResponse({List<Comment>? comments}) =
      _GetCommentsResponse;

  factory GetCommentsResponse.fromJson(List json) => GetCommentsResponse(
        comments:
            (json).map((commentJson) => Comment.fromJson(commentJson)).toList(),
      );

  CommentsEntity toEntity() => CommentsEntity(
        comments!
            .map(
              (e) => CommentEntity(
                  id: e.id,
                  content: e.content,
                  createdAt: e.postedAt,
                  projectId: e.projectId,
                  taskId: e.taskId),
            )
            .toList(),
      );
}
