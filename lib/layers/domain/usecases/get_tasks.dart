// ignore_for_file: invalid_annotation_target

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../core/usecases/usecases.dart';
import '../entities/tasks_entity.dart';
import '../repositories/task_repository.dart';

part 'generated/get_tasks.freezed.dart';
part 'generated/get_tasks.g.dart';

class GetTasks
    implements UseCase<Either<Failure, TasksEntity>, GetTasksParams> {
  final TaskRepository repository;

  GetTasks(this.repository);

  @override
  Future<Either<Failure, TasksEntity>> call(GetTasksParams params) async {
    return await repository.getTasks(params);
  }
}

@freezed
class GetTasksParams with _$GetTasksParams {
  const factory GetTasksParams({
    @JsonKey(name: "section_id") String? sectionId,
    @JsonKey(name: "project_id") String? projectId,
  }) = _GetTasksParams;

  factory GetTasksParams.fromJson(Map<String, dynamic> json) =>
      _$GetTasksParamsFromJson(json);
}
