import 'package:dartz/dartz.dart';
import 'package:flutter_todo/layers/domain/entities/sync_entity.dart';

import '../../../core/error/failures.dart';
import '../usecases/reorder_task.dart';

abstract class SyncRepository {
  Future<Either<Failure, SyncEntity>> reorderTask(ReorderTasksParams params);
}
