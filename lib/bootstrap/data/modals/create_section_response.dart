import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/section_entity.dart';
import 'schemas/section.dart';

part 'generated/create_section_response.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class CreateSectionResponse with _$CreateSectionResponse {
  const CreateSectionResponse._();

  const factory CreateSectionResponse({Section? section}) =
      _CreateSectionResponse;

  factory CreateSectionResponse.fromJson(Map<String, dynamic> json) =>
      CreateSectionResponse(section: Section.fromJson(json));

  SectionEntity toEntity() => SectionEntity(
      id: section?.id,
      name: section?.name,
      order: section?.order,
      projectId: section?.projectId);
}
