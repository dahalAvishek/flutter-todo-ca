// ignore_for_file: invalid_annotation_target

import 'package:dartz/dartz.dart';
import 'package:flutter_todo/layers/domain/repositories/task_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../core/usecases/usecases.dart';
import '../entities/tasks_entity.dart';

part 'generated/create_task.freezed.dart';
part 'generated/create_task.g.dart';

class CreateTask
    implements UseCase<Either<Failure, TaskEntity>, CreateTaskParams> {
  final TaskRepository repository;

  CreateTask(this.repository);

  @override
  Future<Either<Failure, TaskEntity>> call(CreateTaskParams params) async {
    return await repository.createTask(params);
  }
}

@freezed
class CreateTaskParams with _$CreateTaskParams {
  const factory CreateTaskParams({
    @JsonKey(name: "section_id") required String sectionId,
    @JsonKey(name: "project_id") required String projectId,
    required String content,
    String? description,
  }) = _CreateTaskParams;

  factory CreateTaskParams.fromJson(Map<String, dynamic> json) =>
      _$CreateTaskParamsFromJson(json);
}
