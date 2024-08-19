import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../domain/entities/tasks_entity.dart';
import '../../../domain/usecases/get_tasks.dart';

part 'generated/get_todo_bloc.freezed.dart';
part 'get_todo_event.dart';
part 'get_todo_state.dart';

class GetTodoBloc extends Bloc<GetTodoEvent, GetTodoState> {
  final GetTasks _getTasks;

  GetTodoBloc(this._getTasks) : super(const _Initial(TasksEntity([]))) {
    on<GetTodoEvent>((event, emit) {});
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
        log(response.task?.first.content ?? '');

        emit(_Success(
            TasksEntity([...state.tasks.task ?? [], ...response.task ?? []])));
      });
    });
  }
}
