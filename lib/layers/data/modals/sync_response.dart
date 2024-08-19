import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/sync_entity.dart';

part 'generated/sync_response.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class SyncResponse with _$SyncResponse {
  const SyncResponse._();

  const factory SyncResponse({Map<String, String>? syncStatus}) = _SyncResponse;

  factory SyncResponse.fromJson(Map<String, Map<String, String>> json) =>
      SyncResponse(
        syncStatus: json["sync_status"],
      );

  SyncEntity toEntity() => SyncEntity(syncStatus: syncStatus);
}
