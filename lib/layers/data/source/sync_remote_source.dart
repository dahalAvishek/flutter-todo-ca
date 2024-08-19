import 'package:dartz/dartz.dart';
import 'package:flutter_todo/layers/data/modals/sync_response.dart';

import '../../../core/api/api_client.dart';
import '../../../core/error/failures.dart';
import '../../domain/usecases/move_task.dart';
import '../../domain/usecases/reorder_task.dart';

abstract class SyncRemoteSource {
  Future<Either<Failure, SyncResponse>> reorderTask(ReorderTasksParams params);
  Future<Either<Failure, SyncResponse>> moveTask(MoveTasksParams params);
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
}
