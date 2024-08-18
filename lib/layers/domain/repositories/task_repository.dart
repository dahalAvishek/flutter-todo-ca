import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../entities/tasks_entity.dart';
import '../usecases/create_task.dart';
import '../usecases/get_tasks.dart';

abstract class TaskRepository {
  Future<Either<Failure, TasksEntity>> getTasks(GetTasksParams params);
  Future<Either<Failure, TaskEntity>> createTask(CreateTaskParams params);
}
