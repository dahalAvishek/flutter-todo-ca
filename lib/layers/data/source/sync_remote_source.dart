import 'package:dartz/dartz.dart';
import 'package:flutter_todo/layers/data/modals/sync_response.dart';

import '../../../core/api/api_client.dart';
import '../../../core/error/failures.dart';
import '../../domain/usecases/close_task.dart';
import '../../domain/usecases/move_task.dart';
import '../../domain/usecases/reorder_task.dart';
import '../modals/get_completed_task_response.dart';

abstract class SyncRemoteSource {
  Future<Either<Failure, SyncResponse>> reorderTask(ReorderTasksParams params);
  Future<Either<Failure, SyncResponse>> moveTask(MoveTasksParams params);
  Future<Either<Failure, SyncResponse>> closeTask(CloseTaskParams params);
  Future<Either<Failure, GetCompletedTaskresponse>> getCompletedTasks();
}

class SyncRemoteSourceImpl implements SyncRemoteSource {
  final ApiClient _client;

  SyncRemoteSourceImpl(
    this._client,
  );

  @override
  Future<Either<Failure, SyncResponse>> reorderTask(
      ReorderTasksParams params) async {
    final response = await _client.syncRequest(
      type: "item_reorder",
      args: params.toJson(),
      converter: (response) => SyncResponse.fromJson(response),
    );
    return response;
  }

  @override
  Future<Either<Failure, SyncResponse>> moveTask(MoveTasksParams params) async {
    final response = await _client.syncRequest(
      type: "item_move",
      args: params.toJson(),
      converter: (response) => SyncResponse.fromJson(response),
    );
    return response;
  }

  @override
  Future<Either<Failure, SyncResponse>> closeTask(
      CloseTaskParams params) async {
    final response = await _client.syncRequest(
      type: "item_complete",
      args: params.toJson(),
      converter: (response) => SyncResponse.fromJson(response),
    );
    return response;
  }

  @override
  Future<Either<Failure, GetCompletedTaskresponse>> getCompletedTasks() async {
    final response = await _client.syncRequest(
      urlExtension: "completed/get_all",
      type: "item_complete",
      converter: (response) =>
          GetCompletedTaskresponse.fromJson(response as Map<String, dynamic>),
    );
    return response;
  }
}
