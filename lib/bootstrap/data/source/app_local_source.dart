import 'package:dartz/dartz.dart';

import '../../../core/error/failures.dart';
import '../../../utils/services/secure_storage.dart';
import '../modals/app_response.dart';

abstract class AppLocalSource {
  Future<Either<Failure, AppResponse>> getApp();
}

class AppLocalSourceImpl implements AppLocalSource {
  final SecureStorageMixin secureStorageMixin;

  AppLocalSourceImpl(this.secureStorageMixin);

  @override
  Future<Either<Failure, AppResponse>> getApp() async {
    try {
      final String? isFirstTimeValue =
          await secureStorageMixin.getValue(SecureStorageKeys.isFirstTime);
      // await secureStorageMixin.clearValue(SecureStorageKeys.isFirstTime);
      if (isFirstTimeValue == null || isFirstTimeValue.isEmpty) {
        return const Right(AppResponse(isFirstTime: true));
      } else {
        secureStorageMixin.storeValue(
            key: SecureStorageKeys.isFirstTime, value: "false");
        return Right(AppResponse(isFirstTime: bool.parse(isFirstTimeValue)));
      }
    } catch (e) {
      return const Left(
          StorageFailure(message: "Failed getting on boarding status"));
    }
  }
}
