part of 'get_tasks_bloc.dart';

@freezed
class GetTasksState with _$GetTasksState {
  const factory GetTasksState.initial() = _Initial;
  const factory GetTasksState.loading(
      {List<TaskEntity>? todo,
      List<TaskEntity>? inProgress,
      List<TaskEntity>? done}) = _Loading;
  const factory GetTasksState.successAll(
      {required List<TaskEntity> todo,
      required List<TaskEntity> inProgress,
      required List<TaskEntity> done}) = _SuccessAll;

  const factory GetTasksState.failure(String message) = _Failure;
}
