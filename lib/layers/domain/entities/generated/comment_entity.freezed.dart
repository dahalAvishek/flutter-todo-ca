// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../comment_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CommentEntity {
  String? get id => throw _privateConstructorUsedError;
  String? get projectId => throw _privateConstructorUsedError;
  String? get taskId => throw _privateConstructorUsedError;
  String? get content => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentEntityCopyWith<CommentEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentEntityCopyWith<$Res> {
  factory $CommentEntityCopyWith(
          CommentEntity value, $Res Function(CommentEntity) then) =
      _$CommentEntityCopyWithImpl<$Res, CommentEntity>;
  @useResult
  $Res call(
      {String? id,
      String? projectId,
      String? taskId,
      String? content,
      String? createdAt});
}

/// @nodoc
class _$CommentEntityCopyWithImpl<$Res, $Val extends CommentEntity>
    implements $CommentEntityCopyWith<$Res> {
  _$CommentEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? projectId = freezed,
    Object? taskId = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
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
      taskId: freezed == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CcommentEntityImplCopyWith<$Res>
    implements $CommentEntityCopyWith<$Res> {
  factory _$$CcommentEntityImplCopyWith(_$CcommentEntityImpl value,
          $Res Function(_$CcommentEntityImpl) then) =
      __$$CcommentEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? projectId,
      String? taskId,
      String? content,
      String? createdAt});
}

/// @nodoc
class __$$CcommentEntityImplCopyWithImpl<$Res>
    extends _$CommentEntityCopyWithImpl<$Res, _$CcommentEntityImpl>
    implements _$$CcommentEntityImplCopyWith<$Res> {
  __$$CcommentEntityImplCopyWithImpl(
      _$CcommentEntityImpl _value, $Res Function(_$CcommentEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? projectId = freezed,
    Object? taskId = freezed,
    Object? content = freezed,
    Object? createdAt = freezed,
  }) {
    return _then(_$CcommentEntityImpl(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      projectId: freezed == projectId
          ? _value.projectId
          : projectId // ignore: cast_nullable_to_non_nullable
              as String?,
      taskId: freezed == taskId
          ? _value.taskId
          : taskId // ignore: cast_nullable_to_non_nullable
              as String?,
      content: freezed == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$CcommentEntityImpl implements CcommentEntity {
  const _$CcommentEntityImpl(
      {this.id, this.projectId, this.taskId, this.content, this.createdAt});

  @override
  final String? id;
  @override
  final String? projectId;
  @override
  final String? taskId;
  @override
  final String? content;
  @override
  final String? createdAt;

  @override
  String toString() {
    return 'CommentEntity(id: $id, projectId: $projectId, taskId: $taskId, content: $content, createdAt: $createdAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CcommentEntityImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.projectId, projectId) ||
                other.projectId == projectId) &&
            (identical(other.taskId, taskId) || other.taskId == taskId) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, id, projectId, taskId, content, createdAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CcommentEntityImplCopyWith<_$CcommentEntityImpl> get copyWith =>
      __$$CcommentEntityImplCopyWithImpl<_$CcommentEntityImpl>(
          this, _$identity);
}

abstract class CcommentEntity implements CommentEntity {
  const factory CcommentEntity(
      {final String? id,
      final String? projectId,
      final String? taskId,
      final String? content,
      final String? createdAt}) = _$CcommentEntityImpl;

  @override
  String? get id;
  @override
  String? get projectId;
  @override
  String? get taskId;
  @override
  String? get content;
  @override
  String? get createdAt;
  @override
  @JsonKey(ignore: true)
  _$$CcommentEntityImplCopyWith<_$CcommentEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CommentsEntity {
  List<CommentEntity>? get comments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CommentsEntityCopyWith<CommentsEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CommentsEntityCopyWith<$Res> {
  factory $CommentsEntityCopyWith(
          CommentsEntity value, $Res Function(CommentsEntity) then) =
      _$CommentsEntityCopyWithImpl<$Res, CommentsEntity>;
  @useResult
  $Res call({List<CommentEntity>? comments});
}

/// @nodoc
class _$CommentsEntityCopyWithImpl<$Res, $Val extends CommentsEntity>
    implements $CommentsEntityCopyWith<$Res> {
  _$CommentsEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = freezed,
  }) {
    return _then(_value.copyWith(
      comments: freezed == comments
          ? _value.comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentEntity>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CommentsEntityImplCopyWith<$Res>
    implements $CommentsEntityCopyWith<$Res> {
  factory _$$CommentsEntityImplCopyWith(_$CommentsEntityImpl value,
          $Res Function(_$CommentsEntityImpl) then) =
      __$$CommentsEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<CommentEntity>? comments});
}

/// @nodoc
class __$$CommentsEntityImplCopyWithImpl<$Res>
    extends _$CommentsEntityCopyWithImpl<$Res, _$CommentsEntityImpl>
    implements _$$CommentsEntityImplCopyWith<$Res> {
  __$$CommentsEntityImplCopyWithImpl(
      _$CommentsEntityImpl _value, $Res Function(_$CommentsEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = freezed,
  }) {
    return _then(_$CommentsEntityImpl(
      freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<CommentEntity>?,
    ));
  }
}

/// @nodoc

class _$CommentsEntityImpl implements _CommentsEntity {
  const _$CommentsEntityImpl(final List<CommentEntity>? comments)
      : _comments = comments;

  final List<CommentEntity>? _comments;
  @override
  List<CommentEntity>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'CommentsEntity(comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentsEntityImpl &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentsEntityImplCopyWith<_$CommentsEntityImpl> get copyWith =>
      __$$CommentsEntityImplCopyWithImpl<_$CommentsEntityImpl>(
          this, _$identity);
}

abstract class _CommentsEntity implements CommentsEntity {
  const factory _CommentsEntity(final List<CommentEntity>? comments) =
      _$CommentsEntityImpl;

  @override
  List<CommentEntity>? get comments;
  @override
  @JsonKey(ignore: true)
  _$$CommentsEntityImplCopyWith<_$CommentsEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
