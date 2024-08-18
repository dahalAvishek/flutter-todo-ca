// ignore_for_file: invalid_annotation_target

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../core/usecases/usecases.dart';
import '../entities/comment_entity.dart';
import '../repositories/comment_respository.dart';

part 'generated/create_comment.freezed.dart';
part 'generated/create_comment.g.dart';

class CreateComment
    implements UseCase<Either<Failure, CommentEntity>, CreateCommentParams> {
  final CommentRepository repository;

  CreateComment(this.repository);

  @override
  Future<Either<Failure, CommentEntity>> call(
      CreateCommentParams params) async {
    return await repository.createComment(params);
  }
}

@freezed
class CreateCommentParams with _$CreateCommentParams {
  const factory CreateCommentParams({
    @JsonKey(name: "task_id") required String taskId,
    required String content,
  }) = _CreateCommentParams;

  factory CreateCommentParams.fromJson(Map<String, dynamic> json) =>
      _$CreateCommentParamsFromJson(json);
}
