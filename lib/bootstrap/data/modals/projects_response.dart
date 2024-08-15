import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/projects_entity.dart';
import 'project.dart';

part 'generated/projects_response.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class ProjectsResponse with _$ProjectsResponse {
  const ProjectsResponse._();

  const factory ProjectsResponse({List<Project>? projects}) = _ProjectsResponse;

  factory ProjectsResponse.fromJson(List json) => ProjectsResponse(
        projects:
            (json).map((brandJson) => Project.fromJson(brandJson)).toList(),
      );

  ProjectsEntity toEntity() => ProjectsEntity(
        projects: projects!
            .map(
              (e) => ProjectEntity(id: e.id, name: e.name),
            )
            .toList(),
      );
}
