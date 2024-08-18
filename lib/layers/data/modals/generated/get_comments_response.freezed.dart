// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../get_comments_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetCommentsResponse {
  List<Comment>? get comments => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetCommentsResponseCopyWith<GetCommentsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetCommentsResponseCopyWith<$Res> {
  factory $GetCommentsResponseCopyWith(
          GetCommentsResponse value, $Res Function(GetCommentsResponse) then) =
      _$GetCommentsResponseCopyWithImpl<$Res, GetCommentsResponse>;
  @useResult
  $Res call({List<Comment>? comments});
}

/// @nodoc
class _$GetCommentsResponseCopyWithImpl<$Res, $Val extends GetCommentsResponse>
    implements $GetCommentsResponseCopyWith<$Res> {
  _$GetCommentsResponseCopyWithImpl(this._value, this._then);

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
              as List<Comment>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetCommentsResponseImplCopyWith<$Res>
    implements $GetCommentsResponseCopyWith<$Res> {
  factory _$$GetCommentsResponseImplCopyWith(_$GetCommentsResponseImpl value,
          $Res Function(_$GetCommentsResponseImpl) then) =
      __$$GetCommentsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Comment>? comments});
}

/// @nodoc
class __$$GetCommentsResponseImplCopyWithImpl<$Res>
    extends _$GetCommentsResponseCopyWithImpl<$Res, _$GetCommentsResponseImpl>
    implements _$$GetCommentsResponseImplCopyWith<$Res> {
  __$$GetCommentsResponseImplCopyWithImpl(_$GetCommentsResponseImpl _value,
      $Res Function(_$GetCommentsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comments = freezed,
  }) {
    return _then(_$GetCommentsResponseImpl(
      comments: freezed == comments
          ? _value._comments
          : comments // ignore: cast_nullable_to_non_nullable
              as List<Comment>?,
    ));
  }
}

/// @nodoc

class _$GetCommentsResponseImpl extends _GetCommentsResponse {
  const _$GetCommentsResponseImpl({final List<Comment>? comments})
      : _comments = comments,
        super._();

  final List<Comment>? _comments;
  @override
  List<Comment>? get comments {
    final value = _comments;
    if (value == null) return null;
    if (_comments is EqualUnmodifiableListView) return _comments;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetCommentsResponse(comments: $comments)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetCommentsResponseImpl &&
            const DeepCollectionEquality().equals(other._comments, _comments));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_comments));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetCommentsResponseImplCopyWith<_$GetCommentsResponseImpl> get copyWith =>
      __$$GetCommentsResponseImplCopyWithImpl<_$GetCommentsResponseImpl>(
          this, _$identity);
}

abstract class _GetCommentsResponse extends GetCommentsResponse {
  const factory _GetCommentsResponse({final List<Comment>? comments}) =
      _$GetCommentsResponseImpl;
  const _GetCommentsResponse._() : super._();

  @override
  List<Comment>? get comments;
  @override
  @JsonKey(ignore: true)
  _$$GetCommentsResponseImplCopyWith<_$GetCommentsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
