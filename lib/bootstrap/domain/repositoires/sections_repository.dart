import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../../core/usecases/usecases.dart';
import '../entities/section_entity.dart';
import '../usecases/create_section.dart';

abstract class SectionsRepository {
  Future<Either<Failure, SectionsEntity>> getSections(NoParams params);
  Future<Either<Failure, SectionEntity>> createSection(
      CreateSectionParams params);
}
