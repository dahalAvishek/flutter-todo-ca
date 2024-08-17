// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'generated/section.freezed.dart';
part 'generated/section.g.dart';

@Freezed(toJson: false)
class Section with _$Section {
  const factory Section({
    String? id,
    @JsonKey(name: "project_id") String? projectId,
    int? order,
    String? name,
  }) = _Section;

  const Section._();

  factory Section.fromJson(Map<String, dynamic> json) =>
      _$SectionFromJson(json);
}
