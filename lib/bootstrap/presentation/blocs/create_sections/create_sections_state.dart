part of 'create_sections_bloc.dart';

@freezed
class CreateSectionsState with _$CreateSectionsState {
  const factory CreateSectionsState.initial() = _Initial;
  const factory CreateSectionsState.loading() = _Loading;
  const factory CreateSectionsState.success(String message) = _Success;
  const factory CreateSectionsState.failure(String message) = _Failure;
}
