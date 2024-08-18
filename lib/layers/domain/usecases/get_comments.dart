// ignore_for_file: invalid_annotation_target

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../core/usecases/usecases.dart';
import '../entities/comment_entity.dart';
import '../repositories/comment_respository.dart';

part 'generated/get_comments.freezed.dart';
part 'generated/get_comments.g.dart';

class GetComments
    implements UseCase<Either<Failure, CommentsEntity>, GetCommentsParams> {
  final CommentRepository repository;

  GetComments(this.repository);

  @override
  Future<Either<Failure, CommentsEntity>> call(GetCommentsParams params) async {
    return await repository.getComments(params);
  }
}

@freezed
class GetCommentsParams with _$GetCommentsParams {
  const factory GetCommentsParams({
    @JsonKey(name: "task_id") required String taskId,
  }) = _GetCommentsParams;

  factory GetCommentsParams.fromJson(Map<String, dynamic> json) =>
      _$GetCommentsParamsFromJson(json);
}
