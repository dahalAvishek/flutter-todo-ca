part of 'get_todo_bloc.dart';

@freezed
class GetTodoEvent with _$GetTodoEvent {
  const factory GetTodoEvent.attempt(GetTasksParams params) = _Attempt;
}
