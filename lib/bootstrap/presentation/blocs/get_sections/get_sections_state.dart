part of 'get_sections_bloc.dart';

@freezed
class GetSectionsState with _$GetSectionsState {
  const factory GetSectionsState.initial() = _Initial;
  const factory GetSectionsState.loading() = _Loading;
  const factory GetSectionsState.success({SectionsEntity? sections}) = _Success;
  const factory GetSectionsState.failure(String message) = _Failure;
}
