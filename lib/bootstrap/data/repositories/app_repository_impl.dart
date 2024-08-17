import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../../core/usecases/usecases.dart';
import '../../domain/entities/app_entity.dart';
import '../../domain/repositoires/app_repository.dart';
import '../source/app_local_source.dart';

class AppRepositoryImpl implements AppRepository {
  final AppLocalSource appLocalSource;

  const AppRepositoryImpl({
    required this.appLocalSource,
  });

  @override
  Future<Either<Failure, AppEntity>> getApp(NoParams noParams) async {
    final response = await appLocalSource.getApp();

    return response.fold((failure) => Left(failure),
        (appResponse) => Right(appResponse.toEntity()));
  }
}
