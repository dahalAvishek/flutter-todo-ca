// ignore: invalid_annotation_target

import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../core/error/failures.dart';
import '../../../core/usecases/usecases.dart';
import '../entities/section_entity.dart';
import '../repositoires/sections_repository.dart';

part 'generated/create_section.freezed.dart';
part 'generated/create_section.g.dart';

class CreateSection
    implements UseCase<Either<Failure, SectionEntity>, CreateSectionParams> {
  final SectionsRepository repository;

  CreateSection(this.repository);

  @override
  Future<Either<Failure, SectionEntity>> call(
      CreateSectionParams params) async {
    return await repository.createSection(params);
  }
}

@freezed
class CreateSectionParams with _$CreateSectionParams {
  const factory CreateSectionParams({
    @JsonKey(name: "project_id") required String projectID,
    required String name,
  }) = _CreateSectionParams;

  factory CreateSectionParams.fromJson(Map<String, dynamic> json) =>
      _$CreateSectionParamsFromJson(json);
}
