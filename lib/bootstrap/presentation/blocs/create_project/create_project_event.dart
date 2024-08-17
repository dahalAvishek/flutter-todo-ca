part of 'create_project_bloc.dart';

@freezed
class CreateProjectEvent with _$CreateProjectEvent {
  const factory CreateProjectEvent.attempt(CreateProjectParams params) =
      _Attempt;
}
