import 'package:flutter_todo/bootstrap/domain/usecases/get_projects.dart';
import 'package:get_it/get_it.dart';

import '../bootstrap/data/repositories/projects_repositories_impl.dart';
import '../bootstrap/data/source/projects_remote_source.dart';
import '../bootstrap/domain/repositoires/projects_repositories.dart';
import '../bootstrap/presentation/blocs/app/app_bloc.dart';
import '../core/api/api_client.dart';
import 'services/secure_storage.dart';

GetIt sl = GetIt.instance;

Future<void> serviceLocator() async {
  // await _initDotEnv();
  await _initSecureStorage();
  // await _initIsar();
  // await _initFirebase();
  // await _initSupabase();
  // _initServices();
  sl.registerSingleton<ApiClient>(ApiClient());
  _dataSources();
  _repositories();
  _useCase();
  _blocs();
}

// Future<void> _initDotEnv() async {
//   await EnvironmentService.init();
//   sl.registerSingleton<EnvironmentService>(EnvironmentService());
// }

Future<void> _initSecureStorage() async {
  await SecureStorageMixin.initSecureStorage();
  sl.registerSingleton<SecureStorageMixin>(SecureStorageMixin());
}

// Future<void> _initIsar() async {
//   await IsarServiceMixin.init();
//   sl.registerSingleton<IsarServiceMixin>(IsarServiceMixin());
// }

// Future<void> _initFirebase() async {
//   await FirebaseServiceMixin.init();
//   sl.registerSingleton<FirebaseServiceMixin>(FirebaseServiceMixin());
// }

// Future<void> _initSupabase() async {
//   await SupabaseService.init();
//   sl.registerSingleton<SupabaseService>(SupabaseService());
// }

// Future<void> _initServices() async {
//   // sl.registerSingleton<DeviceService>(DeviceService());
//   // await sl<DeviceService>().init();
//   sl.registerSingleton<CameraService>(CameraService());
//   await sl<CameraService>().init();
// }

void _repositories() {
  sl.registerLazySingleton<ProjectsRepositories>(
    () => ProjectsRepositoriesImpl(
      source: sl(),
    ),
  );
}

void _dataSources() {
  sl.registerLazySingleton<ProjectsRemoteSource>(
    () => ProjectsRemoteSourceImpl(sl()),
  );
}

void _useCase() {
  sl.registerLazySingleton(() => GetProjects(sl()));
}

void _blocs() {
  sl.registerFactory(() => AppBloc(sl()));
  // sl.registerFactory(() => AddFavoriteBloc(sl()));
}
