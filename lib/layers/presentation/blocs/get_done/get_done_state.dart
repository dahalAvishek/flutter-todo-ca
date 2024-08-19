part of 'get_done_bloc.dart';

@freezed
class GetDoneState with _$GetDoneState {
  const factory GetDoneState.initial(TasksEntity tasks) = _Initial;
  const factory GetDoneState.loading(TasksEntity tasks) = _Loading;
  const factory GetDoneState.success(TasksEntity tasks) = _Success;
  const factory GetDoneState.failure(
      {required TasksEntity tasks, required String message}) = _Failure;
}
