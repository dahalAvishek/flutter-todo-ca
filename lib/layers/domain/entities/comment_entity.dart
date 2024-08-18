import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/comment_entity.freezed.dart';

@freezed
class CommentEntity with _$CommentEntity {
  const factory CommentEntity({
    String? id,
    String? projectId,
    String? taskId,
    String? content,
    String? createdAt,
  }) = CcommentEntity;
}

@freezed
class CommentsEntity with _$CommentsEntity {
  const factory CommentsEntity(List<CommentEntity>? comments) = _CommentsEntity;
}
