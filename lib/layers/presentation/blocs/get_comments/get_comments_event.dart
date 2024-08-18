part of 'get_comments_bloc.dart';

@freezed
class GetCommentsEvent with _$GetCommentsEvent {
  const factory GetCommentsEvent.attempt({required String taskId}) = _Attempt;
}
