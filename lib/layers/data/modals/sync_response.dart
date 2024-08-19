import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/sync_entity.dart';

part 'generated/sync_response.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class SyncResponse with _$SyncResponse {
  const SyncResponse._();

  const factory SyncResponse({bool? fullSync}) = _SyncResponse;

  factory SyncResponse.fromJson(Map<String, dynamic> json) => SyncResponse(
        fullSync: json["full_sync"],
      );

  SyncEntity toEntity() => SyncEntity(fullSync: fullSync);
}
