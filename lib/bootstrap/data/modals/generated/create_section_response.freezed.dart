// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../create_section_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$CreateSectionResponse {
  Section? get section => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CreateSectionResponseCopyWith<CreateSectionResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateSectionResponseCopyWith<$Res> {
  factory $CreateSectionResponseCopyWith(CreateSectionResponse value,
          $Res Function(CreateSectionResponse) then) =
      _$CreateSectionResponseCopyWithImpl<$Res, CreateSectionResponse>;
  @useResult
  $Res call({Section? section});

  $SectionCopyWith<$Res>? get section;
}

/// @nodoc
class _$CreateSectionResponseCopyWithImpl<$Res,
        $Val extends CreateSectionResponse>
    implements $CreateSectionResponseCopyWith<$Res> {
  _$CreateSectionResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? section = freezed,
  }) {
    return _then(_value.copyWith(
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as Section?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SectionCopyWith<$Res>? get section {
    if (_value.section == null) {
      return null;
    }

    return $SectionCopyWith<$Res>(_value.section!, (value) {
      return _then(_value.copyWith(section: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CreateSectionResponseImplCopyWith<$Res>
    implements $CreateSectionResponseCopyWith<$Res> {
  factory _$$CreateSectionResponseImplCopyWith(
          _$CreateSectionResponseImpl value,
          $Res Function(_$CreateSectionResponseImpl) then) =
      __$$CreateSectionResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Section? section});

  @override
  $SectionCopyWith<$Res>? get section;
}

/// @nodoc
class __$$CreateSectionResponseImplCopyWithImpl<$Res>
    extends _$CreateSectionResponseCopyWithImpl<$Res,
        _$CreateSectionResponseImpl>
    implements _$$CreateSectionResponseImplCopyWith<$Res> {
  __$$CreateSectionResponseImplCopyWithImpl(_$CreateSectionResponseImpl _value,
      $Res Function(_$CreateSectionResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? section = freezed,
  }) {
    return _then(_$CreateSectionResponseImpl(
      section: freezed == section
          ? _value.section
          : section // ignore: cast_nullable_to_non_nullable
              as Section?,
    ));
  }
}

/// @nodoc

class _$CreateSectionResponseImpl extends _CreateSectionResponse {
  const _$CreateSectionResponseImpl({this.section}) : super._();

  @override
  final Section? section;

  @override
  String toString() {
    return 'CreateSectionResponse(section: $section)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CreateSectionResponseImpl &&
            (identical(other.section, section) || other.section == section));
  }

  @override
  int get hashCode => Object.hash(runtimeType, section);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CreateSectionResponseImplCopyWith<_$CreateSectionResponseImpl>
      get copyWith => __$$CreateSectionResponseImplCopyWithImpl<
          _$CreateSectionResponseImpl>(this, _$identity);
}

abstract class _CreateSectionResponse extends CreateSectionResponse {
  const factory _CreateSectionResponse({final Section? section}) =
      _$CreateSectionResponseImpl;
  const _CreateSectionResponse._() : super._();

  @override
  Section? get section;
  @override
  @JsonKey(ignore: true)
  _$$CreateSectionResponseImplCopyWith<_$CreateSectionResponseImpl>
      get copyWith => throw _privateConstructorUsedError;
}
