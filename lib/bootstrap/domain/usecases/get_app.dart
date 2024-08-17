import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../../../core/usecases/usecases.dart';
import '../entities/app_entity.dart';
import '../repositoires/app_repository.dart';

class GetApp implements UseCase<Either<Failure, AppEntity>, NoParams> {
  final AppRepository repository;

  GetApp(this.repository);

  @override
  Future<Either<Failure, AppEntity>> call(NoParams noParams) async {
    return await repository.getApp(noParams);
  }
}
