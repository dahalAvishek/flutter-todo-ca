part of 'get_projects_bloc.dart';

@freezed
class GetProjectsEvent with _$GetProjectsEvent {
  const factory GetProjectsEvent.attempt() = _Attempt;
}
