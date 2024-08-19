import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../domain/entities/tasks_entity.dart';
import '../../../domain/usecases/get_task.dart';

part 'generated/get_task_bloc.freezed.dart';
part 'get_task_event.dart';
part 'get_task_state.dart';

class GetTaskBloc extends Bloc<GetTaskEvent, GetTaskState> {
  final GetTask _getTask;
  GetTaskBloc(this._getTask) : super(const _Initial()) {
    on<GetTaskEvent>((event, emit) {});
    on<_Attempt>((event, emit) async {
      emit(const _Loading());

      final data = await _getTask.call(GetTaskParams(taskId: event.taskId));
      data.fold(
          (failure) => {
                if (failure is ServerFailure)
                  {
                    emit(_Failure(
                      failure.message ?? "Server Error!",
                    ))
                  }
              }, (response) {
        emit(_Success(response));
      });
    });
  }
}
