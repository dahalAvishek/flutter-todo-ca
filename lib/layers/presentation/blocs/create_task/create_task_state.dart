part of 'create_task_bloc.dart';

@freezed
class CreateTaskState with _$CreateTaskState {
  const factory CreateTaskState.initial() = _Initial;
  const factory CreateTaskState.loading() = _Loading;
  const factory CreateTaskState.success(String message) = _Success;
  const factory CreateTaskState.failure(String message) = _Failure;
}
