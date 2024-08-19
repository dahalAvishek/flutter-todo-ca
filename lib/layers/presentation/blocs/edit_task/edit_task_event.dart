part of 'edit_task_bloc.dart';

@freezed
class EditTaskEvent with _$EditTaskEvent {
  const factory EditTaskEvent.attempt(
      {required String taskId,
      required String content,
      String? description}) = _Attempt;
}
