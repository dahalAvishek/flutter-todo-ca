part of 'reorder_task_dart_bloc.dart';

@freezed
class ReorderTaskDartEvent with _$ReorderTaskDartEvent {
  const factory ReorderTaskDartEvent.attempt(ReorderTasksParams params) =
      _Attempt;
}
