import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../../../../utils/services/secure_storage.dart';
import '../../../domain/entities/tasks_entity.dart';
import '../../../domain/usecases/get_completed_task.dart';

part 'generated/get_completed_task_bloc.freezed.dart';
part 'get_completed_task_event.dart';
part 'get_completed_task_state.dart';

class GetCompletedTaskBloc
    extends Bloc<GetCompletedTaskEvent, GetCompletedTaskState> {
  final GetCompletedTask _getCompletedTasks;
  final SecureStorageMixin _secureStorageMixin;
  GetCompletedTaskBloc(this._getCompletedTasks, this._secureStorageMixin)
      : super(const _Initial()) {
    on<GetCompletedTaskEvent>((event, emit) {});
    on<_Attempt>((event, emit) async {
      emit(const _Loading());
      String? projectId =
          await _secureStorageMixin.getValue(SecureStorageKeys.projectId);

      final data = await _getCompletedTasks.call(NoParams());
      data.fold(
          (failure) => {
                if (failure is ServerFailure)
                  {
                    emit(_Failure(
                      failure.message ?? "Server Error!",
                    ))
                  }
              }, (response) {
        final newResponse = response.task
            ?.where((element) => element.projectId == projectId)
            .toList();
        emit(_Success(newResponse ?? []));
      });
    });
  }
}
