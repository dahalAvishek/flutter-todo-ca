import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../domain/entities/projects_entity.dart';
import '../../../domain/usecases/create_project.dart';

part 'create_project_event.dart';
part 'create_project_state.dart';
part 'generated/create_project_bloc.freezed.dart';

class CreateProjectBloc extends Bloc<CreateProjectEvent, CreateProjectState> {
  final CreateProject _createProject;
  CreateProjectBloc(this._createProject) : super(const _Initial()) {
    on<CreateProjectEvent>((event, emit) {});
    on<_Attempt>((event, emit) async {
      emit(const _Loading());

      final data = await _createProject
          .call(CreateProjectParams(name: event.params.name));

      data.fold((failure) {
        if (failure is ServerFailure) {
          emit(_Failure(failure.message ?? "Server Error!"));
        }
      }, (getProvincesEntity) => emit(_Success(getProvincesEntity)));
    });
  }
}
