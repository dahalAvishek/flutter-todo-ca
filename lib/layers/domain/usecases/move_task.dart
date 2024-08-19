// ignore_for_file: invalid_annotation_target

import 'package:dartz/dartz.dart';
import 'package:flutter_todo/layers/domain/entities/sync_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../core/usecases/usecases.dart';
import '../repositories/sync_repository.dart';

part 'generated/move_task.freezed.dart';
part 'generated/move_task.g.dart';

class MoveTask
    implements UseCase<Either<Failure, SyncEntity>, MoveTasksParams> {
  final SyncRepository repository;

  MoveTask(this.repository);

  @override
  Future<Either<Failure, SyncEntity>> call(MoveTasksParams params) async {
    return await repository.moveTask(params);
  }
}

@freezed
class MoveTasksParams with _$MoveTasksParams {
  const factory MoveTasksParams({
    // @JsonKey(name: "items") required ItemParams items,
    required String id,
    @JsonKey(name: "section_id") required String sectionId,
  }) = _MoveTasksParams;

  factory MoveTasksParams.fromJson(Map<String, dynamic> json) =>
      _$MoveTasksParamsFromJson(json);
}
