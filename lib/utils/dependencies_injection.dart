import 'package:flutter_todo/bootstrap/domain/usecases/create_project.dart';
import 'package:flutter_todo/bootstrap/domain/usecases/get_app.dart';
import 'package:flutter_todo/bootstrap/domain/usecases/get_projects.dart';
import 'package:flutter_todo/bootstrap/domain/usecases/get_sections.dart';
import 'package:flutter_todo/bootstrap/presentation/blocs/get_projects/get_projects_bloc.dart';
import 'package:get_it/get_it.dart';

import '../bootstrap/data/repositories/app_repository_impl.dart';
import '../bootstrap/data/repositories/projects_repositories_impl.dart';
import '../bootstrap/data/repositories/section_repository_impl.dart';
import '../bootstrap/data/source/Section_remote_source.dart';
import '../bootstrap/data/source/app_local_source.dart';
import '../bootstrap/data/source/projects_remote_source.dart';
import '../bootstrap/domain/repositoires/app_repository.dart';
import '../bootstrap/domain/repositoires/projects_repositories.dart';
import '../bootstrap/domain/repositoires/sections_repository.dart';
import '../bootstrap/domain/usecases/create_section.dart';
import '../bootstrap/presentation/blocs/app/app_bloc.dart';
import '../bootstrap/presentation/blocs/create_project/create_project_bloc.dart';
import '../bootstrap/presentation/blocs/create_sections/create_sections_bloc.dart';
import '../bootstrap/presentation/blocs/get_sections/get_sections_bloc.dart';
import '../core/api/api_client.dart';
import '../layers/data/repositories/comment_repository_impl.dart';
import '../layers/data/repositories/sync_repository_impl.dart';
import '../layers/data/repositories/tasks_repositories_impl.dart';
import '../layers/data/source/comment_remote_source.dart';
import '../layers/data/source/sync_remote_source.dart';
import '../layers/data/source/task_remote_source.dart';
import '../layers/domain/repositories/comment_respository.dart';
import '../layers/domain/repositories/sync_repository.dart';
import '../layers/domain/repositories/task_repository.dart';
import '../layers/domain/usecases/close_task.dart';
import '../layers/domain/usecases/create_comment.dart';
import '../layers/domain/usecases/create_task.dart';
import '../layers/domain/usecases/edit_task.dart';
import '../layers/domain/usecases/get_comments.dart';
import '../layers/domain/usecases/get_completed_task.dart';
import '../layers/domain/usecases/get_task.dart';
import '../layers/domain/usecases/get_tasks.dart';
import '../layers/domain/usecases/move_task.dart';
import '../layers/presentation/blocs/close_task/close_task_bloc.dart';
import '../layers/presentation/blocs/create_comment/create_comment_bloc.dart';
import '../layers/presentation/blocs/create_task/create_task_bloc.dart';
import '../layers/presentation/blocs/edit_task/edit_task_bloc.dart';
import '../layers/presentation/blocs/get_completed_task/get_completed_task_bloc.dart';
import '../layers/presentation/blocs/get_tasks/get_tasks_bloc.dart';
import '../layers/presentation/blocs/move_task/move_task_bloc.dart';
import 'services/dotenv_service.dart';
import 'services/secure_storage.dart';

GetIt sl = GetIt.instance;

Future<void> serviceLocator() async {
  await _initDotEnv();
  await _initSecureStorage();
  sl.registerSingleton<ApiClient>(ApiClient());
  _dataSources();
  _repositories();
  _useCase();
  _blocs();
}

Future<void> _initDotEnv() async {
  await EnvironmentService.init();
  sl.registerSingleton<EnvironmentService>(EnvironmentService());
}

Future<void> _initSecureStorage() async {
  await SecureStorageMixin.initSecureStorage();
  sl.registerSingleton<SecureStorageMixin>(SecureStorageMixin());
}

void _repositories() {
  sl.registerLazySingleton<ProjectsRepositories>(
    () => ProjectsRepositoriesImpl(source: sl(), secureStorageMixin: sl()),
  );
  sl.registerLazySingleton<SectionsRepository>(
    () => SectionsRepositoriesImpl(source: sl()),
  );
  sl.registerLazySingleton<TaskRepository>(
    () => TaskRepositoryImpl(source: sl()),
  );
  sl.registerLazySingleton<CommentRepository>(
    () => CommentRepositoryImpl(source: sl()),
  );

  sl.registerLazySingleton<AppRepository>(
    () => AppRepositoryImpl(
      appLocalSource: sl(),
    ),
  );
  sl.registerLazySingleton<SyncRepository>(
    () => SyncRepositoryImpl(
      source: sl(),
    ),
  );
}

void _dataSources() {
  sl.registerLazySingleton<ProjectsRemoteSource>(
    () => ProjectsRemoteSourceImpl(sl()),
  );
  sl.registerLazySingleton<AppLocalSource>(
    () => AppLocalSourceImpl(sl()),
  );
  sl.registerLazySingleton<SectionRemoteSource>(
    () => SectionRemoteSourceImpl(sl(), sl()),
  );
  sl.registerLazySingleton<TaskRemoteSource>(
    () => TaskRemoteSourceImpl(sl(), sl()),
  );
  sl.registerLazySingleton<CommentRemoteSource>(
    () => CommentRemoteSourceImpl(
      sl(),
    ),
  );
  sl.registerLazySingleton<SyncRemoteSource>(
    () => SyncRemoteSourceImpl(
      sl(),
    ),
  );
}

void _useCase() {
  sl.registerLazySingleton(() => CreateProject(sl()));
  sl.registerLazySingleton(() => CreateSection(sl()));
  sl.registerLazySingleton(() => GetProjects(sl()));
  sl.registerLazySingleton(() => GetSections(sl()));
  sl.registerLazySingleton(() => GetApp(sl()));
  sl.registerLazySingleton(() => GetTasks(sl()));
  sl.registerLazySingleton(() => CreateTask(sl()));
  sl.registerLazySingleton(() => GetComments(sl()));
  sl.registerLazySingleton(() => CreateComment(sl()));
  sl.registerLazySingleton(() => MoveTask(sl()));
  sl.registerLazySingleton(() => CloseTask(sl()));

  sl.registerLazySingleton(() => GetTask(sl()));
  sl.registerLazySingleton(() => EditTask(sl()));
  sl.registerLazySingleton(() => GetCompletedTask(sl()));
}

void _blocs() {
  sl.registerFactory(() => AppBloc(sl()));
  sl.registerFactory(() => CreateProjectBloc(sl()));
  sl.registerFactory(() => GetProjectsBloc(sl()));
  sl.registerFactory(() => GetSectionsBloc(sl()));
  sl.registerFactory(() => CreateSectionsBloc(sl(), sl()));
  sl.registerFactory(() => CreateTaskBloc(sl(), sl()));
  sl.registerFactory(() => EditTaskBloc(sl()));
  sl.registerFactory(() => CreateCommentBloc(sl()));
  sl.registerFactory(() => MoveTaskBloc(sl()));
  sl.registerFactory(() => GetTasksBloc(sl(), sl()));
  sl.registerFactory(() => CloseTaskBloc(sl()));
  sl.registerFactory(() => GetCompletedTaskBloc(sl(), sl()));
}
