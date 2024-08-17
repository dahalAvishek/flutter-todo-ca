part of 'app_bloc.dart';

@freezed
class AppState with _$AppState {
  const factory AppState.initial() = _Initial;
  const factory AppState.checkingOnBoard() = _CheckingOnBoard;
  const factory AppState.successOnBoard({required bool isFirstTime}) =
      _SuccessOnBoard;
  const factory AppState.failureOnBoard({String? message}) = _FailureOnBoard;

  // const factory AppState.unAuthenticated({String? message}) = _UnAuthenticted;
  // const factory AppState.clearedSession() = _ClearedSession;
}
