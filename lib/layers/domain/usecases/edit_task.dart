// ignore_for_file: invalid_annotation_target

import 'package:dartz/dartz.dart';
import 'package:flutter_todo/layers/domain/repositories/task_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../core/usecases/usecases.dart';
import '../entities/tasks_entity.dart';

part 'generated/edit_task.freezed.dart';
part 'generated/edit_task.g.dart';

class EditTask implements UseCase<Either<Failure, TaskEntity>, EditTaskParams> {
  final TaskRepository repository;

  EditTask(this.repository);

  @override
  Future<Either<Failure, TaskEntity>> call(EditTaskParams params) async {
    return await repository.editTask(params);
  }
}

@freezed
class EditTaskParams with _$EditTaskParams {
  const factory EditTaskParams({
    @JsonKey(name: "task_id") required String taskId,
    required String content,
    String? description,
  }) = _EditTaskParams;

  factory EditTaskParams.fromJson(Map<String, dynamic> json) =>
      _$EditTaskParamsFromJson(json);
}
