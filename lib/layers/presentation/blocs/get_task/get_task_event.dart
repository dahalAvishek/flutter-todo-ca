part of 'get_task_bloc.dart';

@freezed
class GetTaskEvent with _$GetTaskEvent {
  const factory GetTaskEvent.attempt({required String taskId}) = _Attempt;
}
