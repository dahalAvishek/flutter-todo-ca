import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../domain/usecases/close_task.dart';

part 'close_task_event.dart';
part 'close_task_state.dart';
part 'generated/close_task_bloc.freezed.dart';

class CloseTaskBloc extends Bloc<CloseTaskEvent, CloseTaskState> {
  final CloseTask _closeTask;
  CloseTaskBloc(this._closeTask) : super(const _Initial()) {
    on<CloseTaskEvent>((event, emit) {});
    on<_Attempt>(
      (event, emit) async {
        emit(const _Loading());
        // String? projectId =
        //     await _secureStorageMixin.getValue(SecureStorageKeys.projectId);
        final data = await _closeTask.call(CloseTaskParams(
            id: event.params.id, dateCompleted: event.params.dateCompleted));

        data.fold((failure) {
          if (failure is ServerFailure) {
            emit(_Failure(failure.message ?? "Server Error!"));
          }
        },
            (project) => emit(const _Success(
                  message: "Successfully closed task",
                )));
      },
    );
  }
}
