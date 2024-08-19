import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/sync_entity.freezed.dart';

@freezed
class SyncEntity with _$SyncEntity {
  const factory SyncEntity({Map<String, String>? syncStatus}) = _SyncEntity;
}
