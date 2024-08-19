// ignore_for_file: invalid_annotation_target

import 'package:dartz/dartz.dart';
import 'package:flutter_todo/layers/domain/repositories/task_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../core/usecases/usecases.dart';
import '../entities/tasks_entity.dart';

part 'generated/get_task.freezed.dart';
part 'generated/get_task.g.dart';

class GetTask implements UseCase<Either<Failure, TaskEntity>, GetTaskParams> {
  final TaskRepository repository;

  GetTask(this.repository);

  @override
  Future<Either<Failure, TaskEntity>> call(GetTaskParams params) async {
    return await repository.getTask(params);
  }
}

@freezed
class GetTaskParams with _$GetTaskParams {
  const factory GetTaskParams({
    @JsonKey(name: "task_id") required String taskId,
  }) = _GetTaskParams;

  factory GetTaskParams.fromJson(Map<String, dynamic> json) =>
      _$GetTaskParamsFromJson(json);
}
