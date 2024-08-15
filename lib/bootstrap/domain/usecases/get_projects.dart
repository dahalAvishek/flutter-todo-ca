import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../core/usecases/usecases.dart';
import '../entities/projects_entity.dart';
import '../repositoires/projects_repositories.dart';

class GetProjects
    implements UseCase<Either<Failure, ProjectsEntity>, NoParams> {
  final ProjectsRepositories repository;

  GetProjects(this.repository);

  @override
  Future<Either<Failure, ProjectsEntity>> call(NoParams params) async {
    return await repository.getProjects(params);
  }
}
