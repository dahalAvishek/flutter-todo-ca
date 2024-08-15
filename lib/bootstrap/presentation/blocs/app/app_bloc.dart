import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/exception.dart';
import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../../../domain/entities/projects_entity.dart';
import '../../../domain/usecases/get_projects.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'generated/app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  final GetProjects _getProjects;

  AppBloc(this._getProjects) : super(const _Initial()) {
    on<AppEvent>((event, emit) {});
    on<_CheckProject>((event, emit) async {
      emit(const _CheckingProject());
      final data = await _getProjects.call(NoParams());
      data.fold(
          (failure) => {
                if (failure is ServerFailure)
                  {
                    emit(_FailureCheckProject(
                      message: failure.message ?? "Server Error!",
                    ))
                  }
                else if (failure is UnauthorizedFailure)
                  {addError(UnauthorizedException())}
              }, (result) {
        ProjectEntity? homeProject =
            result.projects?.firstWhere((project) => project.name == "Inbox");
        emit(_SuccessCheckProject(
            ProjectEntity(id: homeProject?.id, name: homeProject?.name)));
      });
    });
  }
}
