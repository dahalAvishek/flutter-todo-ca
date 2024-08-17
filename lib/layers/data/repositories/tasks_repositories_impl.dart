import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../domain/entities/tasks_entity.dart';
import '../../domain/repositories/task_repository.dart';
import '../../domain/usecases/get_tasks.dart';
import '../source/task_remote_source.dart';

class TaskRepositoryImpl implements TaskRepository {
  final TaskRemoteSource source;

  const TaskRepositoryImpl({required this.source});

  @override
  Future<Either<Failure, TasksEntity>> getTasks(GetTasksParams params) async {
    final response = await source.getTasks(params);
    return response.fold((failure) => Left(failure), (successRes) {
      return Right(successRes.toEntity());
    });
  }

  // @override
  // Future<Either<Failure, SectionEntity>> createSection(
  //     CreateSectionParams params) async {
  //   final response = await source.createSection(params);

  //   return response.fold(
  //       (failure) => Left(failure), (result) => Right(result.toEntity()));
  // }
}
