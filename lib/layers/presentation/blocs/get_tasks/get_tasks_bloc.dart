import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../../utils/services/secure_storage.dart';
import '../../../domain/entities/tasks_entity.dart';
import '../../../domain/usecases/get_tasks.dart';

part 'generated/get_tasks_bloc.freezed.dart';
part 'get_tasks_event.dart';
part 'get_tasks_state.dart';

class GetTasksBloc extends Bloc<GetTasksEvent, GetTasksState> {
  final GetTasks _getTasks;
  final SecureStorageMixin _secureStorageMixin;

  GetTasksBloc(this._getTasks, this._secureStorageMixin)
      : super(const _Initial()) {
    on<GetTasksEvent>((event, emit) async {});
    on<_GetTasks>((event, emit) async {
      emit(const _Loading());

      String? projectId =
          await _secureStorageMixin.getValue(SecureStorageKeys.projectId);

      final data = await _getTasks.call(GetTasksParams(projectId: projectId));
      data.fold(
          (failure) => {
                if (failure is ServerFailure)
                  {emit(const _Failure("Failure getting tasks"))}
              }, (response) {
        emit(_SuccessAll(
          todo: response.task
                  ?.where((task) => task.sectionId == event.todoSectionId)
                  .toList() ??
              [],
          done: response.task
                  ?.where((task) => task.sectionId == event.doneStringId)
                  .toList() ??
              [],
          inProgress: response.task
                  ?.where((task) => task.sectionId == event.inProgressSectionId)
                  .toList() ??
              [],
        ));
      });
    });

    // on<_AttemptTodo>((event, emit) async {

    //   emit(const _Loading());
    //   // log(state.)
    //   // final data = await _getTasks.call(GetTasksParams(
    //   //   sectionId: event.sectionId,
    //   // ));
    //   // data.fold(
    //   //     (failure) => {
    //   //           if (failure is ServerFailure)
    //   //             {emit(const _Failure("Failure getting tasks"))}
    //   //         }, (response) {
    //   //   emit(_SuccessTodo(response));
    //   // });
    // });

    // on<_AttemptInProgress>((event, emit) async {
    //   emit(const _Loading());
    //   final data = await _getTasks.call(GetTasksParams(
    //     sectionId: event.sectionId,
    //   ));

    //   data.fold(
    //       (failure) => {
    //             if (failure is ServerFailure)
    //               {emit(const _Failure("Failure getting tasks"))}
    //           }, (response) {
    //     emit(_SuccessInProgress(response));
    //   });
    // });

    // on<_AttemptInProgress>((event, emit) async {
    //   emit(const _Loading());
    //   final data = await _getTasks.call(GetTasksParams(
    //     sectionId: event.sectionId,
    //   ));
    //   data.fold(
    //       (failure) => {
    //             if (failure is ServerFailure)
    //               {emit(const _Failure("Failure getting tasks"))}
    //           }, (response) {
    //     emit(_SuccessInProgress(response));
    //   });
    // });
  }
}
