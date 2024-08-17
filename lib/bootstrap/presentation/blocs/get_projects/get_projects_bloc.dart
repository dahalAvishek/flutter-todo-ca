import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../../../domain/entities/projects_entity.dart';
import '../../../domain/usecases/get_projects.dart';

part 'generated/get_projects_bloc.freezed.dart';
part 'get_projects_event.dart';
part 'get_projects_state.dart';

class GetProjectsBloc extends Bloc<GetProjectsEvent, GetProjectsState> {
  final GetProjects _getProjects;
  GetProjectsBloc(this._getProjects) : super(const _Initial()) {
    on<GetProjectsEvent>((event, emit) {});
    on<_Attempt>((event, emit) async {
      emit(const _Loading());
      final data = await _getProjects.call(NoParams());
      data.fold((failure) {
        if (failure is ServerFailure) {
          emit(_Failure(failure.message ?? "Server Error!"));
        }
      }, (results) {
        ProjectEntity? project = results.projects?.firstWhere(
          (element) => element.name == "My Todo App",
          orElse: () => const ProjectEntity(),
        );
        if (project != null && project.id != null) {
          emit(_Success(ProjectEntity(id: project.id, name: project.name)));
        } else {
          emit(const _Failure("no such project"));
        }
      });
    });
  }
}
