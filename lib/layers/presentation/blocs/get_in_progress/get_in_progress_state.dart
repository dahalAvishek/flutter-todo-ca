part of 'get_in_progress_bloc.dart';

@freezed
class GetInProgressState with _$GetInProgressState {
  const factory GetInProgressState.initial(TasksEntity tasks) = _Initial;
  const factory GetInProgressState.loading(TasksEntity tasks) = _Loading;
  const factory GetInProgressState.success(TasksEntity tasks) = _Success;
  const factory GetInProgressState.failure(
      {required TasksEntity tasks, required String message}) = _Failure;
}
