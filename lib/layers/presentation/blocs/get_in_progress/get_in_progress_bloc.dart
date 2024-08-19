import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../domain/entities/tasks_entity.dart';
import '../../../domain/usecases/get_tasks.dart';

part 'generated/get_in_progress_bloc.freezed.dart';
part 'get_in_progress_event.dart';
part 'get_in_progress_state.dart';

class GetInProgressBloc extends Bloc<GetInProgressEvent, GetInProgressState> {
  final GetTasks _getTasks;

  GetInProgressBloc(this._getTasks) : super(const _Initial(TasksEntity([]))) {
    on<GetInProgressEvent>((event, emit) {});
    on<_Attempt>((event, emit) async {
      final data = await _getTasks
          .call(GetTasksParams(sectionId: event.params.sectionId));
      data.fold(
          (failure) => {
                if (failure is ServerFailure)
                  {
                    emit(_Failure(
                      tasks: state.tasks,
                      message: failure.message ?? "Server Error!",
                    ))
                  }
              }, (response) {
        emit(_Success(
            TasksEntity([...state.tasks.task ?? [], ...response.task ?? []])));
      });
    });
  }
}
