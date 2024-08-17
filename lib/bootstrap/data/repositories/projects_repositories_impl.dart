import 'package:dartz/dartz.dart';
import 'package:flutter_todo/bootstrap/domain/entities/projects_entity.dart';
import 'package:flutter_todo/core/usecases/usecases.dart';

import '../../../core/error/failures.dart';
import '../../domain/repositoires/projects_repositories.dart';
import '../../domain/usecases/create_project.dart';
import '../source/projects_remote_source.dart';

class ProjectsRepositoriesImpl implements ProjectsRepositories {
  final ProjectsRemoteSource source;

  const ProjectsRepositoriesImpl({required this.source});

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

    return response.fold(
        (failure) => Left(failure), (result) => Right(result.toEntity()));
  }
}
