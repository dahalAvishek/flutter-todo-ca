import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../domain/entities/comment_entity.dart';
import '../../../domain/usecases/get_comments.dart';

part 'generated/get_comments_bloc.freezed.dart';
part 'get_comments_event.dart';
part 'get_comments_state.dart';

class GetCommentsBloc extends Bloc<GetCommentsEvent, GetCommentsState> {
  final GetComments _getComments;
  GetCommentsBloc(this._getComments) : super(const _Initial()) {
    on<GetCommentsEvent>((event, emit) {});
    on<_Attempt>((event, emit) async {
      emit(const _Loading());
      final data =
          await _getComments.call(GetCommentsParams(taskId: event.taskId));
      data.fold((failure) {
        if (failure is ServerFailure) {
          emit(_Failure(failure.message ?? "Server Error!"));
        }
      }, (results) {
        emit(_Success(comments: results));
      });
    });
  }
}
