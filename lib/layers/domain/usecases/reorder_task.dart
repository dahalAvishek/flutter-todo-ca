// ignore_for_file: invalid_annotation_target

import 'package:dartz/dartz.dart';
import 'package:flutter_todo/layers/domain/entities/sync_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../core/usecases/usecases.dart';
import '../repositories/sync_repository.dart';

part 'generated/reorder_task.freezed.dart';
part 'generated/reorder_task.g.dart';

class ReorderTask
    implements UseCase<Either<Failure, SyncEntity>, ReorderTasksParams> {
  final SyncRepository repository;

  ReorderTask(this.repository);

  @override
  Future<Either<Failure, SyncEntity>> call(ReorderTasksParams params) async {
    return await repository.reorderTask(params);
  }
}

@freezed
class ReorderTasksParams with _$ReorderTasksParams {
  const factory ReorderTasksParams({
    @JsonKey(name: "items") required ItemParams items,
  }) = _ReorderTasksParams;

  factory ReorderTasksParams.fromJson(Map<String, dynamic> json) =>
      _$ReorderTasksParamsFromJson(json);
}

@freezed
class ItemParams with _$ItemParams {
  const factory ItemParams({
    required String id,
    @JsonKey(name: "child_order") required num childOrder,
  }) = _ItemParams;

  factory ItemParams.fromJson(Map<String, dynamic> json) =>
      _$ItemParamsFromJson(json);
}
