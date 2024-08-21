import 'package:dartz/dartz.dart';
import 'package:flutter_todo/layers/domain/entities/sync_entity.dart';
import 'package:flutter_todo/layers/domain/entities/tasks_entity.dart';

import '../../../core/error/failures.dart';
import '../usecases/close_task.dart';
import '../usecases/move_task.dart';
import '../usecases/reorder_task.dart';

abstract class SyncRepository {
  Future<Either<Failure, SyncEntity>> reorderTask(ReorderTasksParams params);
  Future<Either<Failure, SyncEntity>> moveTask(MoveTasksParams params);
  Future<Either<Failure, SyncEntity>> closeTask(CloseTaskParams params);
  Future<Either<Failure, TasksEntity>> getCompletedTasks();
}
