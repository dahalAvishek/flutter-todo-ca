// ignore_for_file: invalid_annotation_target

import 'package:dartz/dartz.dart';
import 'package:flutter_todo/layers/domain/entities/tasks_entity.dart';

import '../../../../core/error/failures.dart';
import '../../../core/usecases/usecases.dart';
import '../repositories/sync_repository.dart';

class GetCompletedTask
    implements UseCase<Either<Failure, TasksEntity>, NoParams> {
  final SyncRepository repository;

  GetCompletedTask(this.repository);

  @override
  Future<Either<Failure, TasksEntity>> call(NoParams params) async {
    return await repository.getCompletedTasks();
  }
}
