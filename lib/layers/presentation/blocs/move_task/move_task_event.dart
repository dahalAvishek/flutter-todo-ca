part of 'move_task_bloc.dart';

@freezed
class MoveTaskEvent with _$MoveTaskEvent {
  const factory MoveTaskEvent.attempt(
      {required MoveTasksParams params, String? oldSectionId}) = _Attempt;
}
