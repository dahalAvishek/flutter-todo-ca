part of 'get_in_progress_bloc.dart';

@freezed
class GetInProgressEvent with _$GetInProgressEvent {
  const factory GetInProgressEvent.attempt(GetTasksParams params) = _Attempt;
}
