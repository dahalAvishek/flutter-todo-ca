part of 'move_task_bloc.dart';

@freezed
class MoveTaskState with _$MoveTaskState {
  const factory MoveTaskState.initial() = _Initial;
  const factory MoveTaskState.loading() = _Loading;
  const factory MoveTaskState.success(
      {required String message,
      required String newSectionId,
      required String oldSectionId}) = _Success;
  const factory MoveTaskState.failure(String message) = _Failure;
}
