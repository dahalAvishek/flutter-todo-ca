// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../tasks_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TaskEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get projectId => throw _privateConstructorUsedError;
  String? get sectionId => throw _privateConstructorUsedError;
  int? get order => throw _privateConstructorUsedError;
  int? get commentCount => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  bool? get isCompleted => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TaskEntityCopyWith<TaskEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TaskEntityCopyWith<$Res> {
  factory $TaskEntityCopyWith(
          TaskEntity value, $Res Function(TaskEntity) then) =
      _$TaskEntityCopyWithImpl<$Res, TaskEntity>;
  @useResult
  $Res call(
      {String? id,
      String? projectId,
      String? sectionId,
      int? order,
      int? commentCount,
      String? content,
      String? description,
      String? createdAt,
      bool? isCompleted});
}

/// @nodoc
class _$TaskEntityCopyWithImpl<$Res, $Val extends TaskEntity>
    implements $TaskEntityCopyWith<$Res> {
  _$TaskEntityCopyWithImpl(this._value, this._then);

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
    Object? order = freezed,
    Object? commentCount = freezed,
    Object? content = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? isCompleted = freezed,
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
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TaskEntityImplCopyWith<$Res>
    implements $TaskEntityCopyWith<$Res> {
  factory _$$TaskEntityImplCopyWith(
          _$TaskEntityImpl value, $Res Function(_$TaskEntityImpl) then) =
      __$$TaskEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? projectId,
      String? sectionId,
      int? order,
      int? commentCount,
      String? content,
      String? description,
      String? createdAt,
      bool? isCompleted});
}

/// @nodoc
class __$$TaskEntityImplCopyWithImpl<$Res>
    extends _$TaskEntityCopyWithImpl<$Res, _$TaskEntityImpl>
    implements _$$TaskEntityImplCopyWith<$Res> {
  __$$TaskEntityImplCopyWithImpl(
      _$TaskEntityImpl _value, $Res Function(_$TaskEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? projectId = freezed,
    Object? sectionId = freezed,
    Object? order = freezed,
    Object? commentCount = freezed,
    Object? content = freezed,
    Object? description = freezed,
    Object? createdAt = freezed,
    Object? isCompleted = freezed,
  }) {
    return _then(_$TaskEntityImpl(
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
      order: freezed == order
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int?,
      commentCount: freezed == commentCount
          ? _value.commentCount
          : commentCount // ignore: cast_nullable_to_non_nullable
              as int?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      isCompleted: freezed == isCompleted
          ? _value.isCompleted
          : isCompleted // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$TaskEntityImpl implements _TaskEntity {
  const _$TaskEntityImpl(
      {this.id,
      this.projectId,
      this.sectionId,
      this.order,
      this.commentCount,
      this.content,
      this.description,
      this.createdAt,
      this.isCompleted});

  @override
  final String? id;
  @override
  final String? projectId;
  @override
  final String? sectionId;
  @override
  final int? order;
  @override
  final int? commentCount;
  @override
  final String? content;
  @override
  final String? description;
  @override
  final String? createdAt;
  @override
  final bool? isCompleted;

  @override
  String toString() {
    return 'TaskEntity(id: $id, projectId: $projectId, sectionId: $sectionId, order: $order, commentCount: $commentCount, content: $content, description: $description, createdAt: $createdAt, isCompleted: $isCompleted)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TaskEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.sectionId, sectionId) ||
                other.sectionId == sectionId) &&
            (identical(other.order, order) || other.order == order) &&
            (identical(other.commentCount, commentCount) ||
                other.commentCount == commentCount) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isCompleted, isCompleted) ||
                other.isCompleted == isCompleted));
  }

  @override
  int get hashCode => Object.hash(runtimeType, id, projectId, sectionId, order,
      commentCount, content, description, createdAt, isCompleted);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TaskEntityImplCopyWith<_$TaskEntityImpl> get copyWith =>
      __$$TaskEntityImplCopyWithImpl<_$TaskEntityImpl>(this, _$identity);
}

abstract class _TaskEntity implements TaskEntity {
  const factory _TaskEntity(
      {final String? id,
      final String? projectId,
      final String? sectionId,
      final int? order,
      final int? commentCount,
      final String? content,
      final String? description,
      final String? createdAt,
      final bool? isCompleted}) = _$TaskEntityImpl;

  @override
  String? get id;
  @override
  String? get projectId;
  @override
  String? get sectionId;
  @override
  int? get order;
  @override
  int? get commentCount;
  @override
  String? get content;
  @override
  String? get description;
  @override
  String? get createdAt;
  @override
  bool? get isCompleted;
  @override
  @JsonKey(ignore: true)
  _$$TaskEntityImplCopyWith<_$TaskEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$TasksEntity {
  List<TaskEntity>? get task => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $TasksEntityCopyWith<TasksEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksEntityCopyWith<$Res> {
  factory $TasksEntityCopyWith(
          TasksEntity value, $Res Function(TasksEntity) then) =
      _$TasksEntityCopyWithImpl<$Res, TasksEntity>;
  @useResult
  $Res call({List<TaskEntity>? task});
}

/// @nodoc
class _$TasksEntityCopyWithImpl<$Res, $Val extends TasksEntity>
    implements $TasksEntityCopyWith<$Res> {
  _$TasksEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_value.copyWith(
      task: freezed == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TasksEntityImplCopyWith<$Res>
    implements $TasksEntityCopyWith<$Res> {
  factory _$$TasksEntityImplCopyWith(
          _$TasksEntityImpl value, $Res Function(_$TasksEntityImpl) then) =
      __$$TasksEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<TaskEntity>? task});
}

/// @nodoc
class __$$TasksEntityImplCopyWithImpl<$Res>
    extends _$TasksEntityCopyWithImpl<$Res, _$TasksEntityImpl>
    implements _$$TasksEntityImplCopyWith<$Res> {
  __$$TasksEntityImplCopyWithImpl(
      _$TasksEntityImpl _value, $Res Function(_$TasksEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = freezed,
  }) {
    return _then(_$TasksEntityImpl(
      freezed == task
          ? _value._task
          : task // ignore: cast_nullable_to_non_nullable
              as List<TaskEntity>?,
    ));
  }
}

/// @nodoc

class _$TasksEntityImpl implements _TasksEntity {
  const _$TasksEntityImpl(final List<TaskEntity>? task) : _task = task;

  final List<TaskEntity>? _task;
  @override
  List<TaskEntity>? get task {
    final value = _task;
    if (value == null) return null;
    if (_task is EqualUnmodifiableListView) return _task;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TasksEntity(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TasksEntityImpl &&
            const DeepCollectionEquality().equals(other._task, _task));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_task));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TasksEntityImplCopyWith<_$TasksEntityImpl> get copyWith =>
      __$$TasksEntityImplCopyWithImpl<_$TasksEntityImpl>(this, _$identity);
}

abstract class _TasksEntity implements TasksEntity {
  const factory _TasksEntity(final List<TaskEntity>? task) = _$TasksEntityImpl;

  @override
  List<TaskEntity>? get task;
  @override
  @JsonKey(ignore: true)
  _$$TasksEntityImplCopyWith<_$TasksEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
