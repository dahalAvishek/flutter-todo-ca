part of 'create_comment_bloc.dart';

@freezed
class CreateCommentEvent with _$CreateCommentEvent {
  const factory CreateCommentEvent.attempt(
      {required String taskId, required String content}) = _Attempt;
}
