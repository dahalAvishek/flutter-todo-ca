import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../../core/usecases/usecases.dart';
import '../../domain/entities/section_entity.dart';
import '../../domain/repositoires/sections_repository.dart';
import '../../domain/usecases/create_section.dart';
import '../source/Section_remote_source.dart';

class SectionsRepositoriesImpl implements SectionsRepository {
  final SectionRemoteSource source;

  const SectionsRepositoriesImpl({required this.source});

  @override
  Future<Either<Failure, SectionsEntity>> getSections(NoParams params) async {
    final response = await source.getSections();
    return response.fold((failure) => Left(failure), (successRes) {
      return Right(successRes.toEntity());
    });
  }

  @override
  Future<Either<Failure, SectionEntity>> createSection(
      CreateSectionParams params) async {
    final response = await source.createSection(params);

    return response.fold(
        (failure) => Left(failure), (result) => Right(result.toEntity()));
  }
}
