import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../../utils/services/secure_storage.dart';
import '../../../domain/usecases/create_task.dart';

part 'create_task_event.dart';
part 'create_task_state.dart';
part 'generated/create_task_bloc.freezed.dart';

class CreateTaskBloc extends Bloc<CreateTaskEvent, CreateTaskState> {
  final CreateTask _createTask;
  final SecureStorageMixin _secureStorageMixin;

  CreateTaskBloc(this._createTask, this._secureStorageMixin)
      : super(const _Initial()) {
    on<CreateTaskEvent>((event, emit) {});
    on<_Attempt>((event, emit) async {
      emit(const _Loading());
      String? projectId =
          await _secureStorageMixin.getValue(SecureStorageKeys.projectId);
      if (projectId != null) {
        final data = await _createTask.call(CreateTaskParams(
            content: event.content,
            projectId: projectId,
            sectionId: event.sectionId,
            description: event.description));

        data.fold((failure) {
          if (failure is ServerFailure) {
            emit(_Failure(failure.message ?? "Server Error!"));
          }
        }, (project) => emit(const _Success("successfully task created")));
      } else {
        emit(const _Failure("Secure Storage failure"));
      }
    });
  }
}
