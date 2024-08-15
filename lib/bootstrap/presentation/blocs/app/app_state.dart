part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = _Initial;
  const factory AppState.checkingProject() = _CheckingProject;
  const factory AppState.successCheckProject(ProjectEntity project) =
      _SuccessCheckProject;
  const factory AppState.failureCheckProject({required String message}) =
      _FailureCheckProject;
  // const factory AppState.unAuthenticated({String? message}) = _UnAuthenticted;
  // const factory AppState.clearedSession() = _ClearedSession;
}
