part of 'get_done_bloc.dart';

@freezed
class GetDoneEvent with _$GetDoneEvent {
  const factory GetDoneEvent.attempt(GetTasksParams params) = _Attempt;
}
