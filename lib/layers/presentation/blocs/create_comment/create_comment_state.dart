part of 'create_comment_bloc.dart';

@freezed
class CreateCommentState with _$CreateCommentState {
  const factory CreateCommentState.initial() = _Initial;
  const factory CreateCommentState.loading() = _Loading;
  const factory CreateCommentState.success(String message) = _Success;
  const factory CreateCommentState.failure(String message) = _Failure;
}
