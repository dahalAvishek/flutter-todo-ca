import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../../core/usecases/usecases.dart';
import '../entities/projects_entity.dart';

abstract class ProjectsRepositories {
  Future<Either<Failure, ProjectsEntity>> getProjects(NoParams params);
}
