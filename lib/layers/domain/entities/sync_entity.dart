import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/sync_entity.freezed.dart';

@freezed
class SyncEntity with _$SyncEntity {
  const factory SyncEntity({bool? fullSync}) = _SyncEntity;
}
