part of 'get_comments_bloc.dart';

@freezed
class GetCommentsState with _$GetCommentsState {
  const factory GetCommentsState.initial() = _Initial;
  const factory GetCommentsState.loading() = _Loading;
  const factory GetCommentsState.success({CommentsEntity? comments}) = _Success;
  const factory GetCommentsState.failure(String message) = _Failure;
}
