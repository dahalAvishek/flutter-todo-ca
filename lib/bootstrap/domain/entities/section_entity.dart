import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/section_entity.freezed.dart';

@freezed
class SectionEntity with _$SectionEntity {
  const factory SectionEntity(
      {String? id,
      String? projectId,
      int? order,
      String? name}) = _SectionEntity;
}

@freezed
class SectionsEntity with _$SectionsEntity {
  const factory SectionsEntity({List<SectionEntity>? sections}) = _BrandsEntity;
}
