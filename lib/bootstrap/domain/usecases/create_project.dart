import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../core/usecases/usecases.dart';
import '../entities/projects_entity.dart';
import '../repositoires/projects_repositories.dart';

part 'generated/create_project.freezed.dart';
part 'generated/create_project.g.dart';

class CreateProject
    implements UseCase<Either<Failure, ProjectEntity>, CreateProjectParams> {
  final ProjectsRepositories repository;

  CreateProject(this.repository);

  @override
  Future<Either<Failure, ProjectEntity>> call(
      CreateProjectParams params) async {
    return await repository.createProject(params);
  }
}

@freezed
class CreateProjectParams with _$CreateProjectParams {
  const factory CreateProjectParams({
    required String name,
  }) = _CreateProjectParams;

  factory CreateProjectParams.fromJson(Map<String, dynamic> json) =>
      _$CreateProjectParamsFromJson(json);
}
