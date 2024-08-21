part of 'close_task_bloc.dart';

@freezed
class CloseTaskEvent with _$CloseTaskEvent {
  const factory CloseTaskEvent.attempt(CloseTaskParams params) = _Attempt;
}
