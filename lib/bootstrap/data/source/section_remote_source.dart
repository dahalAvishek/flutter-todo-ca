import 'package:dartz/dartz.dart';
import 'package:flutter_todo/utils/services/secure_storage.dart';

import '../../../core/api/api_client.dart';
import '../../../core/api/api_paths.dart';
import '../../../core/error/failures.dart';
import '../../domain/usecases/create_section.dart';
import '../modals/create_section_response.dart';
import '../modals/get_sections_response.dart';

abstract class SectionRemoteSource {
  Future<Either<Failure, GetSectionsResponse>> getSections();
  Future<Either<Failure, CreateSectionResponse>> createSection(
      CreateSectionParams params);
}

class SectionRemoteSourceImpl implements SectionRemoteSource {
  final ApiClient _client;
  final SecureStorageMixin _secureStorageMixin;

  SectionRemoteSourceImpl(this._client, this._secureStorageMixin);

  @override
  Future<Either<Failure, GetSectionsResponse>> getSections() async {
    String? projectId =
        await _secureStorageMixin.getValue(SecureStorageKeys.projectId);
    final response = await _client.getRequest(
      '${ApiPaths.sectionUrl}?project_id=$projectId',
      converter: (response) => GetSectionsResponse.fromJson(response as List),
    );
    return response;
  }

  @override
  Future<Either<Failure, CreateSectionResponse>> createSection(
      CreateSectionParams params) async {
    final response = await _client.postRequest(
      ApiPaths.sectionUrl,
      data: params.toJson(),
      converter: (response) =>
          CreateSectionResponse.fromJson(response as Map<String, dynamic>),
    );
    return response;
  }
}
