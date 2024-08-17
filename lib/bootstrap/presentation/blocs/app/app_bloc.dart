import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../../../domain/usecases/get_app.dart';

part 'app_event.dart';
part 'app_state.dart';
part 'generated/app_bloc.freezed.dart';

class AppBloc extends Bloc<AppEvent, AppState> {
  // final CreateProject _createProject;
  final GetApp _getApp;
  AppBloc(this._getApp) : super(const _Initial()) {
    on<AppEvent>((event, emit) {});

    on<_CheckOnBoard>(
      (event, emit) async {
        emit(const _CheckingOnBoard());

        final data = await _getApp.call(NoParams());

        data.fold((failure) {
          if (failure is ServerFailure) {
            emit(const _FailureOnBoard());
          }
          if (failure is StorageFailure) {
            emit(const _FailureOnBoard());
          } else {
            emit(const _FailureOnBoard());
          }
        }, (appEntity) {
          emit(_SuccessOnBoard(isFirstTime: appEntity.isFirstTime));
        });
      },
    );

    // on<_CreateProject>(
    //   (event, emit) async {
    //     emit(const _CreatingProject());

    //     final data = await _createProject
    //         .call(CreateProjectParams(name: event.params.name));

    //     data.fold((failure) {
    //       if (failure is ServerFailure) {
    //         emit(const _FailureCreateProject());
    //       }
    //     },
    //         (response) => emit(_SuccessCreateProject(
    //             projectName: response.name, projectid: response.id)));
    //   },
    // );
  }
}
