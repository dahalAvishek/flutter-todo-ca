import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../domain/usecases/create_comment.dart';

part 'create_comment_event.dart';
part 'create_comment_state.dart';
part 'generated/create_comment_bloc.freezed.dart';

class CreateCommentBloc extends Bloc<CreateCommentEvent, CreateCommentState> {
  final CreateComment _createComment;
  CreateCommentBloc(this._createComment) : super(const _Initial()) {
    on<CreateCommentEvent>((event, emit) {});
    on<_Attempt>((event, emit) async {
      emit(const _Loading());

      final data = await _createComment.call(
          CreateCommentParams(content: event.content, taskId: event.taskId));

      data.fold((failure) {
        if (failure is ServerFailure) {
          emit(_Failure(failure.message ?? "Server Error!"));
        }
      }, (project) => emit(const _Success("successfully task created")));
    });
  }
}
