part of 'get_todo_bloc.dart';

@freezed
class GetTodoState with _$GetTodoState {
  const factory GetTodoState.initial(TasksEntity tasks) = _Initial;
  const factory GetTodoState.loading(TasksEntity tasks) = _Loading;
  const factory GetTodoState.success(TasksEntity tasks) = _Success;
  const factory GetTodoState.failure(
      {required TasksEntity tasks, required String message}) = _Failure;
}
