part of 'close_task_bloc.dart';

@freezed
class CloseTaskState with _$CloseTaskState {
  const factory CloseTaskState.initial() = _Initial;
  const factory CloseTaskState.loading() = _Loading;
  const factory CloseTaskState.success({
    required String message,
  }) = _Success;
  const factory CloseTaskState.failure(String message) = _Failure;
}
