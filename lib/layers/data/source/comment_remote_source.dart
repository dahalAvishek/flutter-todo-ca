import 'package:dartz/dartz.dart';

import '../../../core/api/api_client.dart';
import '../../../core/api/api_paths.dart';
import '../../../core/error/failures.dart';
import '../../domain/usecases/create_comment.dart';
import '../../domain/usecases/get_comments.dart';
import '../modals/create_comment_response.dart';
import '../modals/get_comments_response.dart';

abstract class CommentRemoteSource {
  Future<Either<Failure, GetCommentsResponse>> getComments(
      GetCommentsParams params);
  Future<Either<Failure, CreateCommentResponse>> createComment(
      CreateCommentParams params);
}

class CommentRemoteSourceImpl implements CommentRemoteSource {
  final ApiClient _client;

  CommentRemoteSourceImpl(
    this._client,
  );

  @override
  Future<Either<Failure, GetCommentsResponse>> getComments(
      GetCommentsParams params) async {
    final response = await _client.getRequest(
      "${ApiPaths.commentUrl}?task_id=${params.taskId}",
      converter: (response) => GetCommentsResponse.fromJson(response as List),
    );
    return response;
  }

  @override
  Future<Either<Failure, CreateCommentResponse>> createComment(
      CreateCommentParams params) async {
    final response = await _client.postRequest(
      ApiPaths.commentUrl,
      data: params.toJson(),
      converter: (response) =>
          CreateCommentResponse.fromJson(response as Map<String, dynamic>),
    );
    return response;
  }
}
