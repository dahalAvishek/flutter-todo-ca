part of 'get_tasks_bloc.dart';

@freezed
class GetTasksState with _$GetTasksState {
  const factory GetTasksState.initial() = _Initial;
  const factory GetTasksState.loading() = _Loading;
  const factory GetTasksState.success({TasksEntity? tasks}) = _Success;
  const factory GetTasksState.failure(String message) = _Failure;
}
