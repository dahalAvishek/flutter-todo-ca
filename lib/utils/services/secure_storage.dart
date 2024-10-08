import 'package:flutter_secure_storage/flutter_secure_storage.dart';

enum SecureStorageKeys {
  isFirstTime,
  projectId,
}

mixin class SecureStorageMixin {
  static late FlutterSecureStorage? secureStorage;

  static Future<void> initSecureStorage() async {
    secureStorage = const FlutterSecureStorage();
  }

  Future<void> storeInProgressTask(
          {required String key, required DateTime value}) async =>
      await secureStorage?.write(key: key, value: value.toIso8601String());

  Future<void> storeValue(
          {required SecureStorageKeys key, required String value}) async =>
      await secureStorage?.write(key: key.name, value: value);

  Future<String?> getValue(SecureStorageKeys key) async =>
      await secureStorage?.read(key: key.name);

  Future<void> clearValue(SecureStorageKeys key) async =>
      await secureStorage?.delete(key: key.name);
}
