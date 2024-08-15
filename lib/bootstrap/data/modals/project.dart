import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/project.freezed.dart';
part 'generated/project.g.dart';

@Freezed(toJson: false)
class Project with _$Project {
  const factory Project({
    String? id,
    String? name,
  }) = _Project;

  const Project._();

  factory Project.fromJson(Map<String, dynamic> json) =>
      _$ProjectFromJson(json);
}
