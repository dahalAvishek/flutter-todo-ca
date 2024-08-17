part of 'create_project_bloc.dart';

@freezed
class CreateProjectState with _$CreateProjectState {
  const factory CreateProjectState.initial() = _Initial;
  const factory CreateProjectState.loading() = _Loading;
  const factory CreateProjectState.success(ProjectEntity? project) = _Success;
  const factory CreateProjectState.failure(String message) = _Failure;
}
