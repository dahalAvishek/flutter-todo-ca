import 'package:dartz/dartz.dart';
import 'package:flutter_todo/layers/domain/entities/comment_entity.dart';

import '../../../core/error/failures.dart';
import '../../domain/repositories/comment_respository.dart';
import '../../domain/usecases/get_comments.dart';
import '../source/comment_remote_source.dart';

class CommentRepositoryImpl implements CommentRepository {
  final CommentRemoteSource source;

  const CommentRepositoryImpl({required this.source});

  @override
  Future<Either<Failure, CommentsEntity>> getComments(
      GetCommentsParams params) async {
    final response = await source.getComments(params);
    return response.fold((failure) => Left(failure), (successRes) {
      return Right(successRes.toEntity());
    });
  }

  // @override
  // Future<Either<Failure, TaskEntity>> createTask(
  //     CreateTaskParams params) async {
  //   final response = await source.createTask(params);

  //   return response.fold(
  //       (failure) => Left(failure), (result) => Right(result.toEntity()));
  // }
}
