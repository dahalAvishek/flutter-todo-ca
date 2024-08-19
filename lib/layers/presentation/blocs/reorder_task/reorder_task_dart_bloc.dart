import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../domain/usecases/reorder_task.dart';

part 'generated/reorder_task_dart_bloc.freezed.dart';
part 'reorder_task_dart_event.dart';
part 'reorder_task_dart_state.dart';

class ReorderTaskDartBloc
    extends Bloc<ReorderTaskDartEvent, ReorderTaskDartState> {
  ReorderTaskDartBloc() : super(_Initial()) {
    on<ReorderTaskDartEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
