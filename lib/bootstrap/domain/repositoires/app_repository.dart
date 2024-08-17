import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../../core/usecases/usecases.dart';
import '../entities/app_entity.dart';

abstract class AppRepository {
  Future<Either<Failure, AppEntity>> getApp(NoParams noParams);
}
