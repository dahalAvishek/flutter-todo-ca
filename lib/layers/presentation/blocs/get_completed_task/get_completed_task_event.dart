part of 'get_completed_task_bloc.dart';

@freezed
class GetCompletedTaskEvent with _$GetCompletedTaskEvent {
  const factory GetCompletedTaskEvent.attempt() = _Attempt;
}
