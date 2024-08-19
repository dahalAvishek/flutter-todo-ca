import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../domain/usecases/edit_task.dart';

part 'edit_task_event.dart';
part 'edit_task_state.dart';
part 'generated/edit_task_bloc.freezed.dart';

class EditTaskBloc extends Bloc<EditTaskEvent, EditTaskState> {
  final EditTask _editTask;

  EditTaskBloc(this._editTask) : super(const _Initial()) {
    on<EditTaskEvent>((event, emit) {});
    on<_Attempt>((event, emit) async {
      emit(const _Loading());
      final data = await _editTask.call(EditTaskParams(
          content: event.content,
          taskId: event.taskId,
          description: event.description));

      data.fold((failure) {
        if (failure is ServerFailure) {
          emit(_Failure(failure.message ?? "Server Error!"));
        }
      }, (project) => emit(const _Success("successfully task created")));
    });
  }
}
