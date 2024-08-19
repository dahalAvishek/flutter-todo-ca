// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/sync.freezed.dart';
part 'generated/sync.g.dart';

@Freezed(toJson: false)
class Sync with _$Sync {
  const factory Sync({
    @JsonKey(name: "sync_status") String? syncStatus,
  }) = _Sync;

  const Sync._();

  factory Sync.fromJson(Map<String, dynamic> json) => _$SyncFromJson(json);
}
