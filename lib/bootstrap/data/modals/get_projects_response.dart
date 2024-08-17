import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/projects_entity.dart';
import 'project.dart';

part 'generated/get_projects_response.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class GetProjectsResponse with _$GetProjectsResponse {
  const GetProjectsResponse._();

  const factory GetProjectsResponse({List<Project>? projects}) =
      _GetProjectsResponse;

  factory GetProjectsResponse.fromJson(List json) => GetProjectsResponse(
        projects:
            (json).map((projectJson) => Project.fromJson(projectJson)).toList(),
      );

  ProjectsEntity toEntity() => ProjectsEntity(
        projects: projects!
            .map(
              (e) => ProjectEntity(id: e.id, name: e.name),
            )
            .toList(),
      );
}
