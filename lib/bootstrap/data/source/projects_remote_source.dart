import 'package:dartz/dartz.dart';

import '../../../core/api/api_client.dart';
import '../../../core/api/api_paths.dart';
import '../../../core/error/failures.dart';
import '../modals/projects_response.dart';

abstract class ProjectsRemoteSource {
  Future<Either<Failure, ProjectsResponse>> getProjects();
}

class ProjectsRemoteSourceImpl implements ProjectsRemoteSource {
  final ApiClient _client;

  ProjectsRemoteSourceImpl(this._client);

  @override
  Future<Either<Failure, ProjectsResponse>> getProjects() async {
    final response = await _client.getRequest(
      ApiPaths.getProjectsUrl,
      converter: (response) => ProjectsResponse.fromJson(response as List),
    );
    return response;
  }
}
