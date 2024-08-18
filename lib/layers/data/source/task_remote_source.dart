import 'package:dartz/dartz.dart';
import 'package:flutter_todo/layers/data/modals/create_task_response.dart';

import '../../../core/api/api_client.dart';
import '../../../core/api/api_paths.dart';
import '../../../core/error/failures.dart';
import '../../../utils/services/secure_storage.dart';
import '../../domain/usecases/create_task.dart';
import '../../domain/usecases/get_tasks.dart';
import '../modals/get_tasks_response.dart';

abstract class TaskRemoteSource {
  Future<Either<Failure, GetTasksResponse>> getTasks(GetTasksParams params);
  Future<Either<Failure, CreateTasksResponse>> createTask(
      CreateTaskParams params);
}

class TaskRemoteSourceImpl implements TaskRemoteSource {
  final ApiClient _client;
  final SecureStorageMixin _secureStorageMixin;

  TaskRemoteSourceImpl(
    this._client,
    this._secureStorageMixin,
  );

  @override
  Future<Either<Failure, GetTasksResponse>> getTasks(
      GetTasksParams params) async {
    String? projectId =
        await _secureStorageMixin.getValue(SecureStorageKeys.projectId);
    final response = await _client.getRequest(
      "${ApiPaths.tasksUrl}?section_id=${params.sectionId}",
      converter: (response) => GetTasksResponse.fromJson(response as List),
    );
    return response;
  }

  @override
  Future<Either<Failure, CreateTasksResponse>> createTask(
      CreateTaskParams params) async {
    final response = await _client.postRequest(
      ApiPaths.tasksUrl,
      data: params.toJson(),
      converter: (response) =>
          CreateTasksResponse.fromJson(response as Map<String, dynamic>),
    );
    return response;
  }
}
