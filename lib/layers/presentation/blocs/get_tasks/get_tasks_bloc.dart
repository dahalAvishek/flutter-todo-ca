import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../domain/entities/tasks_entity.dart';
import '../../../domain/usecases/get_tasks.dart';

part 'generated/get_tasks_bloc.freezed.dart';
part 'get_tasks_event.dart';
part 'get_tasks_state.dart';

class GetTasksBloc extends Bloc<GetTasksEvent, GetTasksState> {
  final GetTasks _getTasks;
  GetTasksBloc(this._getTasks) : super(const _Initial(TasksEntity([]))) {
    on<GetTasksEvent>((event, emit) {});
    on<_Attempt>((event, emit) async {
      emit(_Loading(state.tasks));
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
