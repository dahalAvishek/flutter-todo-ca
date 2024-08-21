import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../domain/entities/sync_entity.dart';
import '../../domain/entities/tasks_entity.dart';
import '../../domain/repositories/sync_repository.dart';
import '../../domain/usecases/close_task.dart';
import '../../domain/usecases/move_task.dart';
import '../../domain/usecases/reorder_task.dart';
import '../source/sync_remote_source.dart';

class SyncRepositoryImpl implements SyncRepository {
  final SyncRemoteSource source;

  const SyncRepositoryImpl({required this.source});

  @override
  Future<Either<Failure, SyncEntity>> reorderTask(
      ReorderTasksParams params) async {
    final response = await source.reorderTask(params);

    return response.fold(
        (failure) => Left(failure), (result) => Right(result.toEntity()));
  }

  @override
  Future<Either<Failure, SyncEntity>> moveTask(MoveTasksParams params) async {
    final response = await source.moveTask(params);

    return response.fold(
        (failure) => Left(failure), (result) => Right(result.toEntity()));
  }

  @override
  Future<Either<Failure, SyncEntity>> closeTask(CloseTaskParams params) async {
    final response = await source.closeTask(params);

    return response.fold(
        (failure) => Left(failure), (result) => Right(result.toEntity()));
  }

  @override
  Future<Either<Failure, TasksEntity>> getCompletedTasks() async {
    final response = await source.getCompletedTasks();

    return response.fold(
        (failure) => Left(failure), (result) => Right(result.toEntity()));
  }
}
