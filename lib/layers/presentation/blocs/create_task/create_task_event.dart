part of 'create_task_bloc.dart';

@freezed
class CreateTaskEvent with _$CreateTaskEvent {
  const factory CreateTaskEvent.attempt(
      {required String sectionId,
      required String content,
      String? description}) = _Attempt;
}
