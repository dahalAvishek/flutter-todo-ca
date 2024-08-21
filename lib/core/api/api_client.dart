import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:uuid/uuid.dart';

import '../error/failures.dart';
import 'api_interceptor.dart';
import 'api_paths.dart';

typedef ResponseConverter<T> = T Function(dynamic response);

// class ApiClient with SecureStorageMixin {
class ApiClient {
  late String _accessToken;
  late Future<Dio> _dio;

  ApiClient() {
    try {
      // _accessToken = getValue(SecureStorageKeys.token);
    } catch (_) {}
    _accessToken = "e13d2a201efe4b14b0885bc69c7618955c08b733";

    _dio = _createDio();
  }

  Future<Dio> _createDio() async {
    final dio = Dio(
      BaseOptions(
        baseUrl: ApiPaths.baseUrl,
        headers: {
          'Content-Type': 'application/json',
          'Accept': 'application/json',
          // if ((await _accessToken) != null) ...{
          //   'Authorization': "Bearer ${await _accessToken}",
          // },
          'Authorization': "Bearer $_accessToken",
        },
        receiveTimeout: const Duration(minutes: 1),
        connectTimeout: const Duration(minutes: 1),
        validateStatus: (int? status) {
          return status! > 0;
        },
      ),
    );

    // allow self-signed certificate
    // (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
    //   final client = HttpClient();
    //   client.badCertificateCallback = (cert, host, port) => true;
    //   return client;
    // };

    dio.interceptors.add(ApiInterceptor());
    return dio;
  }

  Future<Dio> get dio async {
    // try {
    //   _accessToken = getValue(SecureStorageKeys.token);
    // } catch (_) {}
    _accessToken = "e13d2a201efe4b14b0885bc69c7618955c08b733";
    final dio = await _createDio();
    return dio;
  }

  Future<Either<Failure, T>> getRequest<T>(
    String url, {
    Map<String, dynamic>? queryParameters,
    required ResponseConverter<T> converter,
    String? requestName,
  }) async {
    try {
      final response = await (await dio)
          .get("${ApiPaths.restApiUrl}$url", queryParameters: queryParameters);
      if ((response.statusCode ?? 0) < 200 ||
          (response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }

      return Right(converter(response.data));
    } on DioException catch (e) {
      return Left(
        ServerFailure(
          message: e.response?.data['message'] as String? ?? e.message,
        ),
      );
    }
  }

  Future<Either<Failure, T>> postRequest<T>(String url,
      {Map<String, dynamic>? data,
      FormData? formData,
      required ResponseConverter<T> converter,
      String? requestName}) async {
    try {
      final response = await (await dio)
          .post("${ApiPaths.restApiUrl}$url", data: data ?? formData);
      if ((response.statusCode ?? 0) < 200 ||
          (response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }
      return Right(converter(response.data));
    } on DioException catch (e) {
      if (e.response?.statusCode == 422 &&
          e.response != null &&
          (e.response!.data as Map).containsKey("meta")) {
        List validationErrors =
            ((e.response!.data as Map)["meta"][0] as Map).entries.toList();
        if (validationErrors.isEmpty) {
          return const Left(
              ValidationFailure(message: "Oops! Check your details again."));
        } else {
          return Left(ValidationFailure(
              message:
                  (validationErrors.first as MapEntry).value[0].toString()));
        }
      }
      return Left(
        ServerFailure(
          message: e.response?.data['message'] as String? ?? e.message,
        ),
      );
    }
  }

  Future<Either<Failure, T>> patchRequest<T>(String url,
      {Map<String, dynamic>? data,
      FormData? formData,
      required ResponseConverter<T> converter,
      String? requestName}) async {
    try {
      final response = await (await dio)
          .patch("${ApiPaths.restApiUrl}$url", data: data ?? formData);
      if ((response.statusCode ?? 0) < 200 ||
          (response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }
      return Right(converter(response.data));
    } on DioException catch (e) {
      if (e.response?.statusCode == 422 &&
          e.response != null &&
          (e.response!.data as Map).containsKey("meta")) {
        List validationErrors =
            ((e.response!.data as Map)["meta"][0] as Map).entries.toList();
        if (validationErrors.isEmpty) {
          return const Left(
              ValidationFailure(message: "Oops! Check your details again."));
        } else {
          return Left(ValidationFailure(
              message:
                  (validationErrors.first as MapEntry).value[0].toString()));
        }
      }
      return Left(
        ServerFailure(
          message: e.response?.data['message'] as String? ?? e.message,
        ),
      );
    }
  }

  Future<Either<Failure, T>> syncRequest<T>({
    required String type,
    String? urlExtension,
    Map<String, dynamic>? args,
    required ResponseConverter<T> converter,
  }) async {
    try {
      Map<String, dynamic> data = {
        'commands': [
          {"type": type, "uuid": const Uuid().v4(), "args": args}
        ]
      };

      final response = args != null
          ? await (await dio).post("${ApiPaths.syncUrl}/sync", data: data)
          : await (await dio).get(
              "${ApiPaths.syncUrl}/${urlExtension ?? ''}",
            );
      if ((response.statusCode ?? 0) < 200 ||
          (response.statusCode ?? 0) > 201) {
        throw DioException(
          requestOptions: response.requestOptions,
          response: response,
        );
      }
      return Right(converter(response.data));
    } on DioException catch (e) {
      if (e.response?.statusCode == 422 &&
          e.response != null &&
          (e.response!.data as Map).containsKey("meta")) {
        List validationErrors =
            ((e.response!.data as Map)["meta"][0] as Map).entries.toList();
        if (validationErrors.isEmpty) {
          return const Left(
              ValidationFailure(message: "Oops! Check your details again."));
        } else {
          return Left(ValidationFailure(
              message:
                  (validationErrors.first as MapEntry).value[0].toString()));
        }
      }
      return Left(
        ServerFailure(
          message: e.response?.data['message'] as String? ?? e.message,
        ),
      );
    }
  }
}
