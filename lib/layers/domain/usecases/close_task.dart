// ignore_for_file: invalid_annotation_target

import 'package:dartz/dartz.dart';
import 'package:flutter_todo/layers/domain/entities/sync_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../core/usecases/usecases.dart';
import '../repositories/sync_repository.dart';

part 'generated/close_task.freezed.dart';
part 'generated/close_task.g.dart';

class CloseTask
    implements UseCase<Either<Failure, SyncEntity>, CloseTaskParams> {
  final SyncRepository repository;

  CloseTask(this.repository);

  @override
  Future<Either<Failure, SyncEntity>> call(CloseTaskParams params) async {
    return await repository.closeTask(params);
  }
}

@freezed
class CloseTaskParams with _$CloseTaskParams {
  const factory CloseTaskParams({
    // @JsonKey(name: "items") required ItemParams items,
    required String id,
    @JsonKey(name: "date_completed") required String dateCompleted,
  }) = _CloseTaskParams;

  factory CloseTaskParams.fromJson(Map<String, dynamic> json) =>
      _$CloseTaskParamsFromJson(json);
}
