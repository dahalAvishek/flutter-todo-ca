part of 'get_completed_task_bloc.dart';

@freezed
class GetCompletedTaskState with _$GetCompletedTaskState {
  const factory GetCompletedTaskState.initial() = _Initial;
  const factory GetCompletedTaskState.loading() = _Loading;
  const factory GetCompletedTaskState.success(
    List<TaskEntity> completedTasks,
  ) = _Success;

  const factory GetCompletedTaskState.failure(String message) = _Failure;
}
