import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../domain/usecases/move_task.dart';

part 'generated/move_task_bloc.freezed.dart';
part 'move_task_event.dart';
part 'move_task_state.dart';

class MoveTaskBloc extends Bloc<MoveTaskEvent, MoveTaskState> {
  final MoveTask _moveTask;
  MoveTaskBloc(this._moveTask) : super(const _Initial()) {
    on<MoveTaskEvent>((event, emit) {});

    on<_Attempt>((event, emit) async {
      emit(const _Loading());
      // String? projectId =
      //     await _secureStorageMixin.getValue(SecureStorageKeys.projectId);
      final data = await _moveTask.call(MoveTasksParams(
          id: event.params.id, sectionId: event.params.sectionId));

      data.fold((failure) {
        if (failure is ServerFailure) {
          emit(_Failure(failure.message ?? "Server Error!"));
        }
      },
          (project) => emit(const _Success(
                message: "successfully task created",
              )));
    });
  }
}
