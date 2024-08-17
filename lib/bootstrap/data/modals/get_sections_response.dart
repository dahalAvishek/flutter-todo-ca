import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/section_entity.dart';
import 'schemas/section.dart';

part 'generated/get_sections_response.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class GetSectionsResponse with _$GetSectionsResponse {
  const GetSectionsResponse._();

  const factory GetSectionsResponse({List<Section>? sections}) =
      _GetSectionsResponse;

  factory GetSectionsResponse.fromJson(List json) => GetSectionsResponse(
        sections:
            (json).map((sectionJson) => Section.fromJson(sectionJson)).toList(),
      );

  SectionsEntity toEntity() => SectionsEntity(
        sections: sections!
            .map(
              (e) => SectionEntity(id: e.id, name: e.name),
            )
            .toList(),
      );
}
