import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/projects_entity.dart';
import 'schemas/project.dart';

part 'generated/create_project_response.freezed.dart';

@Freezed(fromJson: false, toJson: false)
class CreateProjectResponse with _$CreateProjectResponse {
  const CreateProjectResponse._();

  const factory CreateProjectResponse({Project? project}) =
      _CreateProjectResponse;

  factory CreateProjectResponse.fromJson(Map<String, dynamic> json) =>
      CreateProjectResponse(project: Project.fromJson(json));

  ProjectEntity toEntity() =>
      ProjectEntity(id: project?.id, name: project?.name);
}
