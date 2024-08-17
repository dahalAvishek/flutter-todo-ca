import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../core/usecases/usecases.dart';
import '../entities/section_entity.dart';
import '../repositoires/sections_repository.dart';

class GetSections
    implements UseCase<Either<Failure, SectionsEntity>, NoParams> {
  final SectionsRepository repository;

  GetSections(this.repository);

  @override
  Future<Either<Failure, SectionsEntity>> call(NoParams params) async {
    return await repository.getSections(params);
  }
}
