// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../task.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Task _$TaskFromJson(Map<String, dynamic> json) {
  return _Task.fromJson(json);
}

/// @nodoc
mixin _$Task {
  String? get id => throw _privateConstructorUsedError;
  @JsonKey(name: "project_id")
  String? get projectId => throw _privateConstructorUsedError;
  @JsonKey(name: "section_id")
  String? get sectionId => throw _privateConstructorUsedError;
  @JsonKey(name: "comment_count")
  int? get commentCount => throw _privateConstructorUsedError;
  @JsonKey(name: "is_completed")
  bool? get isCompleted => throw _privateConstructorUsedError;
  @JsonKey(name: "created_at")
  String? get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: "completed_at")
  String? get completedAt => throw _privateConstructorUsedError;
  @JsonKey(name: "task_id")
  String? get taskId => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskCopyWith<Task> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskCopyWith<$Res> {
  factory $TaskCopyWith(Task value, $Res Function(Task) then) =
      _$TaskCopyWithImpl<$Res, Task>;
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: "project_id") String? projectId,
      @JsonKey(name: "section_id") String? sectionId,
      @JsonKey(name: "comment_count") int? commentCount,
      @JsonKey(name: "is_completed") bool? isCompleted,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "completed_at") String? completedAt,
      @JsonKey(name: "task_id") String? taskId,
      String? content,
      String? description,
      int? order,
      String? name});
}

/// @nodoc
class _$TaskCopyWithImpl<$Res, $Val extends Task>
    implements $TaskCopyWith<$Res> {
  _$TaskCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? projectId = freezed,
    Object? sectionId = freezed,
    Object? commentCount = freezed,
    Object? isCompleted = freezed,
    Object? createdAt = freezed,
    Object? completedAt = freezed,
    Object? taskId = freezed,
    Object? content = freezed,
    Object? description = freezed,
    Object? order = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String?,
      sectionId: freezed == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      taskId: freezed == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskImplCopyWith<$Res> implements $TaskCopyWith<$Res> {
  factory _$$TaskImplCopyWith(
          _$TaskImpl value, $Res Function(_$TaskImpl) then) =
      __$$TaskImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      @JsonKey(name: "project_id") String? projectId,
      @JsonKey(name: "section_id") String? sectionId,
      @JsonKey(name: "comment_count") int? commentCount,
      @JsonKey(name: "is_completed") bool? isCompleted,
      @JsonKey(name: "created_at") String? createdAt,
      @JsonKey(name: "completed_at") String? completedAt,
      @JsonKey(name: "task_id") String? taskId,
      String? content,
      String? description,
      int? order,
      String? name});
}

/// @nodoc
class __$$TaskImplCopyWithImpl<$Res>
    extends _$TaskCopyWithImpl<$Res, _$TaskImpl>
    implements _$$TaskImplCopyWith<$Res> {
  __$$TaskImplCopyWithImpl(_$TaskImpl _value, $Res Function(_$TaskImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? projectId = freezed,
    Object? sectionId = freezed,
    Object? commentCount = freezed,
    Object? isCompleted = freezed,
    Object? createdAt = freezed,
    Object? completedAt = freezed,
    Object? taskId = freezed,
    Object? content = freezed,
    Object? description = freezed,
    Object? order = freezed,
    Object? name = freezed,
  }) {
    return _then(_$TaskImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String?,
      sectionId: freezed == sectionId
          ? _value.sectionId
          : sectionId // ignore: cast_nullable_to_non_nullable
              as String?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      taskId: freezed == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$TaskImpl extends _Task {
  const _$TaskImpl(
      {this.id,
      @JsonKey(name: "project_id") this.projectId,
      @JsonKey(name: "section_id") this.sectionId,
      @JsonKey(name: "comment_count") this.commentCount,
      @JsonKey(name: "is_completed") this.isCompleted,
      @JsonKey(name: "created_at") this.createdAt,
      @JsonKey(name: "completed_at") this.completedAt,
      @JsonKey(name: "task_id") this.taskId,
      this.content,
      this.description,
      this.order,
      this.name})
      : super._();

  factory _$TaskImpl.fromJson(Map<String, dynamic> json) =>
      _$$TaskImplFromJson(json);

  @override
  final String? id;
  @override
  @JsonKey(name: "project_id")
  final String? projectId;
  @override
  @JsonKey(name: "section_id")
  final String? sectionId;
  @override
  @JsonKey(name: "comment_count")
  final int? commentCount;
  @override
  @JsonKey(name: "is_completed")
  final bool? isCompleted;
  @override
  @JsonKey(name: "created_at")
  final String? createdAt;
  @override
  @JsonKey(name: "completed_at")
  final String? completedAt;
  @override
  @JsonKey(name: "task_id")
  final String? taskId;
  @override
  final String? content;
  @override
  final String? description;
  @override
  final int? order;
  @override
  final String? name;

  @override
  String toString() {
    return 'Task(id: $id, projectId: $projectId, sectionId: $sectionId, commentCount: $commentCount, isCompleted: $isCompleted, createdAt: $createdAt, completedAt: $completedAt, taskId: $taskId, content: $content, description: $description, order: $order, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.sectionId, sectionId) ||
                other.sectionId == sectionId) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      projectId,
      sectionId,
      commentCount,
      isCompleted,
      createdAt,
      completedAt,
      taskId,
      content,
      description,
      order,
      name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      __$$TaskImplCopyWithImpl<_$TaskImpl>(this, _$identity);
}

abstract class _Task extends Task {
  const factory _Task(
      {final String? id,
      @JsonKey(name: "project_id") final String? projectId,
      @JsonKey(name: "section_id") final String? sectionId,
      @JsonKey(name: "comment_count") final int? commentCount,
      @JsonKey(name: "is_completed") final bool? isCompleted,
      @JsonKey(name: "created_at") final String? createdAt,
      @JsonKey(name: "completed_at") final String? completedAt,
      @JsonKey(name: "task_id") final String? taskId,
      final String? content,
      final String? description,
      final int? order,
      final String? name}) = _$TaskImpl;
  const _Task._() : super._();

  factory _Task.fromJson(Map<String, dynamic> json) = _$TaskImpl.fromJson;

  @override
  String? get id;
  @override
  @JsonKey(name: "project_id")
  String? get projectId;
  @override
  @JsonKey(name: "section_id")
  String? get sectionId;
  @override
  @JsonKey(name: "comment_count")
  int? get commentCount;
  @override
  @JsonKey(name: "is_completed")
  bool? get isCompleted;
  @override
  @JsonKey(name: "created_at")
  String? get createdAt;
  @override
  @JsonKey(name: "completed_at")
  String? get completedAt;
  @override
  @JsonKey(name: "task_id")
  String? get taskId;
  @override
  String? get content;
  @override
  String? get description;
  @override
  int? get order;
  @override
  String? get name;
  @override
  @JsonKey(ignore: true)
  _$$TaskImplCopyWith<_$TaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
