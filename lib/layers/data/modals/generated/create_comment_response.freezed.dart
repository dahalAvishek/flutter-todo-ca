// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../create_comment_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateCommentResponse {
  Comment? get comment => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateCommentResponseCopyWith<CreateCommentResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateCommentResponseCopyWith<$Res> {
  factory $CreateCommentResponseCopyWith(CreateCommentResponse value,
          $Res Function(CreateCommentResponse) then) =
      _$CreateCommentResponseCopyWithImpl<$Res, CreateCommentResponse>;
  @useResult
  $Res call({Comment? comment});

  $CommentCopyWith<$Res>? get comment;
}

/// @nodoc
class _$CreateCommentResponseCopyWithImpl<$Res,
        $Val extends CreateCommentResponse>
    implements $CreateCommentResponseCopyWith<$Res> {
  _$CreateCommentResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = freezed,
  }) {
    return _then(_value.copyWith(
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as Comment?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CommentCopyWith<$Res>? get comment {
    if (_value.comment == null) {
      return null;
    }

    return $CommentCopyWith<$Res>(_value.comment!, (value) {
      return _then(_value.copyWith(comment: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateCommentResponseImplCopyWith<$Res>
    implements $CreateCommentResponseCopyWith<$Res> {
  factory _$$CreateCommentResponseImplCopyWith(
          _$CreateCommentResponseImpl value,
          $Res Function(_$CreateCommentResponseImpl) then) =
      __$$CreateCommentResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Comment? comment});

  @override
  $CommentCopyWith<$Res>? get comment;
}

/// @nodoc
class __$$CreateCommentResponseImplCopyWithImpl<$Res>
    extends _$CreateCommentResponseCopyWithImpl<$Res,
        _$CreateCommentResponseImpl>
    implements _$$CreateCommentResponseImplCopyWith<$Res> {
  __$$CreateCommentResponseImplCopyWithImpl(_$CreateCommentResponseImpl _value,
      $Res Function(_$CreateCommentResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = freezed,
  }) {
    return _then(_$CreateCommentResponseImpl(
      comment: freezed == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as Comment?,
    ));
  }
}

/// @nodoc

class _$CreateCommentResponseImpl extends _CreateCommentResponse {
  const _$CreateCommentResponseImpl({this.comment}) : super._();

  @override
  final Comment? comment;

  @override
  String toString() {
    return 'CreateCommentResponse(comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateCommentResponseImpl &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateCommentResponseImplCopyWith<_$CreateCommentResponseImpl>
      get copyWith => __$$CreateCommentResponseImplCopyWithImpl<
          _$CreateCommentResponseImpl>(this, _$identity);
}

abstract class _CreateCommentResponse extends CreateCommentResponse {
  const factory _CreateCommentResponse({final Comment? comment}) =
      _$CreateCommentResponseImpl;
  const _CreateCommentResponse._() : super._();

  @override
  Comment? get comment;
  @override
  @JsonKey(ignore: true)
  _$$CreateCommentResponseImplCopyWith<_$CreateCommentResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
