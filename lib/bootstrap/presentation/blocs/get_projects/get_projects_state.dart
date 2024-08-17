part of 'get_projects_bloc.dart';

@freezed
class GetProjectsState with _$GetProjectsState {
  const factory GetProjectsState.initial() = _Initial;
  const factory GetProjectsState.loading() = _Loading;
  const factory GetProjectsState.success(ProjectEntity? project) = _Success;
  const factory GetProjectsState.failure(String message) = _Failure;
}
