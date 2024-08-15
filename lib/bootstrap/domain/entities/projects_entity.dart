import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/projects_entity.freezed.dart';

@freezed
class ProjectEntity with _$ProjectEntity {
  const factory ProjectEntity({
    String? id,
    String? name,
  }) = _ProjectEntity;
}

@freezed
class ProjectsEntity with _$ProjectsEntity {
  const factory ProjectsEntity({List<ProjectEntity>? projects}) = _BrandsEntity;
}
