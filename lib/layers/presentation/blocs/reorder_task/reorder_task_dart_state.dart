part of 'reorder_task_dart_bloc.dart';

@freezed
class ReorderTaskDartState with _$ReorderTaskDartState {
  const factory ReorderTaskDartState.initial() = _Initial;
  const factory ReorderTaskDartState.loading() = _Loading;
  const factory ReorderTaskDartState.success(String message) = _Success;
  const factory ReorderTaskDartState.failure(String message) = _Failure;
}
