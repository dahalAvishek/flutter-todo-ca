part of 'get_task_bloc.dart';

@freezed
class GetTaskState with _$GetTaskState {
  const factory GetTaskState.initial() = _Initial;
  const factory GetTaskState.loading() = _Loading;
  const factory GetTaskState.success(TaskEntity task) = _Success;
  const factory GetTaskState.failure(String message) = _Failure;
}
