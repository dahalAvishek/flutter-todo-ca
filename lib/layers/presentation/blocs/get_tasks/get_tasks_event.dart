part of 'get_tasks_bloc.dart';

@freezed
class GetTasksEvent with _$GetTasksEvent {
  const factory GetTasksEvent.getTasks(
      {required String todoSectionId,
      required String inProgressSectionId,
      required String doneStringId}) = _GetTasks;
  // const factory GetTasksEvent.moveTasks({required MoveTasksParams params}) =
  //     _MoveTask;
}
