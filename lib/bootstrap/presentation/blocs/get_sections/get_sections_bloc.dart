import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../../core/usecases/usecases.dart';
import '../../../domain/entities/section_entity.dart';
import '../../../domain/usecases/get_sections.dart';

part 'generated/get_sections_bloc.freezed.dart';
part 'get_sections_event.dart';
part 'get_sections_state.dart';

class GetSectionsBloc extends Bloc<GetSectionsEvent, GetSectionsState> {
  final GetSections _getSections;
  GetSectionsBloc(this._getSections) : super(const _Initial()) {
    on<GetSectionsEvent>((event, emit) {});
    on<_Attempt>((event, emit) async {
      emit(const _Loading());
      final data = await _getSections.call(NoParams());
      data.fold((failure) {
        if (failure is ServerFailure) {
          emit(_Failure(failure.message ?? "Server Error!"));
        }
      }, (results) {
        // SectionsE? project = results.projects?.firstWhere(
        //   (element) => element.name == "My Todo App",
        //   orElse: () => const ProjectEntity(),
        // );
        // if (project != null && project.id != null) {
        //   emit(_Success(ProjectEntity(id: project.id, name: project.name)));
        // } else {
        //   emit(const _Failure("no such project"));
        // }
        if (results.sections != null && results.sections!.length >= 3) {
          emit(_Success(sections: results));
        } else {
          (emit(const _Failure("Couldnot load sections")));
        }
      });
    });
  }
}
