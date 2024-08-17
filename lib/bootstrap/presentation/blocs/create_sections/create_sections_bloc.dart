import 'package:bloc/bloc.dart';
import 'package:flutter_todo/utils/services/secure_storage.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../domain/usecases/create_section.dart';

part 'create_sections_event.dart';
part 'create_sections_state.dart';
part 'generated/create_sections_bloc.freezed.dart';

class CreateSectionsBloc
    extends Bloc<CreateSectionsEvent, CreateSectionsState> {
  final CreateSection _createSection;
  final SecureStorageMixin _secureStorageMixin;
  CreateSectionsBloc(this._createSection, this._secureStorageMixin)
      : super(const _Initial()) {
    on<CreateSectionsEvent>((event, emit) {});
    on<_Attempt>((event, emit) async {
      emit(const _Loading());
      String? projectId =
          await _secureStorageMixin.getValue(SecureStorageKeys.projectId);

      final List<CreateSectionParams> sections = [
        CreateSectionParams(name: "Todo", projectID: projectId ?? ''),
        CreateSectionParams(name: "In Progress", projectID: projectId ?? ''),
        CreateSectionParams(name: "Done", projectID: projectId ?? ''),
      ];

      for (final sectionParams in sections) {
        final data = await _createSection.call(sectionParams);

        bool hasFailed = data.fold((failure) {
          if (failure is ServerFailure) {
            emit(_Failure(failure.message ?? "Server Error!"));
            return true; // Indicate that a failure occurred
          }
          return false; // No failure
        }, (getProvincesEntity) {
          return false; // No failure
        });

        if (hasFailed) {
          emit(const _Failure("Counldnot create project"));
          return; // Exit the loop if any project creation fails
        }
      }
      emit(const _Success("All projects created successfully"));
    });
  }
}
