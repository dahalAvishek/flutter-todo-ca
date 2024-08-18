import 'package:dartz/dartz.dart';
import 'package:flutter_todo/layers/domain/entities/comment_entity.dart';

import '../../../core/error/failures.dart';
import '../usecases/create_comment.dart';
import '../usecases/get_comments.dart';

abstract class CommentRepository {
  Future<Either<Failure, CommentsEntity>> getComments(GetCommentsParams params);
  Future<Either<Failure, CommentEntity>> createComment(
      CreateCommentParams params);
}
