import 'package:dartz/dartz.dart';

import '../../../core/api/api_client.dart';
import '../../../core/api/api_paths.dart';
import '../../../core/error/failures.dart';
import '../../domain/usecases/get_comments.dart';
import '../modals/get_comments_response.dart';

abstract class CommentRemoteSource {
  Future<Either<Failure, GetCommentsResponse>> getComments(
      GetCommentsParams params);
  // Future<Either<Failure, CreateTasksResponse>> createTask(
  //     CreateTaskParams params);
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

  // @override
  // Future<Either<Failure, CreateTasksResponse>> createTask(
  //     CreateTaskParams params) async {
  //   final response = await _client.postRequest(
  //     ApiPaths.tasksUrl,
  //     data: params.toJson(),
  //     converter: (response) =>
  //         CreateTasksResponse.fromJson(response as Map<String, dynamic>),
  //   );
  //   return response;
  // }
}
