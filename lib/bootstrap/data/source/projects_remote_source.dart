import 'package:dartz/dartz.dart';

import '../../../core/api/api_client.dart';
import '../../../core/api/api_paths.dart';
import '../../../core/error/failures.dart';
import '../../domain/usecases/create_project.dart';
import '../modals/create_project_response.dart';
import '../modals/get_projects_response.dart';

abstract class ProjectsRemoteSource {
  Future<Either<Failure, GetProjectsResponse>> getProjects();
  Future<Either<Failure, CreateProjectResponse>> createProject(
      CreateProjectParams params);
}

class ProjectsRemoteSourceImpl implements ProjectsRemoteSource {
  final ApiClient _client;

  ProjectsRemoteSourceImpl(this._client);

  @override
  Future<Either<Failure, GetProjectsResponse>> getProjects() async {
    final response = await _client.getRequest(
      ApiPaths.projectsUrl,
      converter: (response) => GetProjectsResponse.fromJson(response as List),
    );
    return response;
  }

  @override
  Future<Either<Failure, CreateProjectResponse>> createProject(
      CreateProjectParams params) async {
    final response = await _client.postRequest(
      ApiPaths.projectsUrl,
      data: params.toJson(),
      converter: (response) =>
          CreateProjectResponse.fromJson(response as Map<String, dynamic>),
    );
    return response;
  }
}
