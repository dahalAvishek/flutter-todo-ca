import 'package:dartz/dartz.dart';
import 'package:flutter_todo/bootstrap/domain/entities/projects_entity.dart';
import 'package:flutter_todo/core/usecases/usecases.dart';

import '../../../core/error/failures.dart';
import '../../../utils/services/secure_storage.dart';
import '../../domain/repositoires/projects_repositories.dart';
import '../../domain/usecases/create_project.dart';
import '../source/projects_remote_source.dart';

class ProjectsRepositoriesImpl implements ProjectsRepositories {
  final ProjectsRemoteSource source;
  final SecureStorageMixin secureStorageMixin;

  const ProjectsRepositoriesImpl(
      {required this.source, required this.secureStorageMixin});

  @override
  Future<Either<Failure, ProjectsEntity>> getProjects(NoParams params) async {
    final response = await source.getProjects();
    return response.fold((failure) => Left(failure), (successRes) {
      return Right(successRes.toEntity());
    });
  }

  @override
  Future<Either<Failure, ProjectEntity>> createProject(
      CreateProjectParams params) async {
    final response = await source.createProject(params);

    return response.fold((failure) => Left(failure), (result) async {
      if (result.project?.id != null) {
        await secureStorageMixin.storeValue(
            key: SecureStorageKeys.projectId, value: result.project!.id!);
      }

      return Right(result.toEntity());
    });
  }
}
