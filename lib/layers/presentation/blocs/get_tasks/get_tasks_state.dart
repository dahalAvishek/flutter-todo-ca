part of 'get_tasks_bloc.dart';

@freezed
class GetTasksState with _$GetTasksState {
  const factory GetTasksState.initial(TasksEntity tasks) = _Initial;
  const factory GetTasksState.loading(TasksEntity tasks) = _Loading;
  const factory GetTasksState.success(TasksEntity tasks) = _Success;
  const factory GetTasksState.failure(
      {required TasksEntity tasks, required String message}) = _Failure;
}
