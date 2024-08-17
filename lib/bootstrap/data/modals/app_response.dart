import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/app_entity.dart';

part 'generated/app_response.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class AppResponse with _$AppResponse {
  const AppResponse._();

  const factory AppResponse({required bool isFirstTime}) = _AppResponse;
  AppEntity toEntity() => AppEntity(isFirstTime: isFirstTime);
}
