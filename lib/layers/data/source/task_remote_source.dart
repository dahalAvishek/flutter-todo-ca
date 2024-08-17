import 'package:dartz/dartz.dart';

import '../../../core/api/api_client.dart';
import '../../../core/api/api_paths.dart';
import '../../../core/error/failures.dart';
import '../../../utils/services/secure_storage.dart';
import '../../domain/usecases/get_tasks.dart';
import '../modals/get_tasks_response.dart';

abstract class TaskRemoteSource {
  Future<Either<Failure, GetTasksResponse>> getTasks(GetTasksParams params);
  // Future<Either<Failure, CreateSectionResponse>> createSection(
  //     CreateSectionParams params);
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
      "${ApiPaths.tasksUrl}?project_id=$projectId",
      converter: (response) => GetTasksResponse.fromJson(response as List),
    );
    return response;
  }

  // @override
  // Future<Either<Failure, CreateSectionResponse>> createSection(
  //     CreateSectionParams params) async {
  //   final response = await _client.postRequest(
  //     ApiPaths.sectionUrl,
  //     data: params.toJson(),
  //     converter: (response) =>
  //         CreateSectionResponse.fromJson(response as Map<String, dynamic>),
  //   );
  //   return response;
  // }
}
