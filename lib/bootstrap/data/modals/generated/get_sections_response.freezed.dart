// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../get_sections_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GetSectionsResponse {
  List<Section>? get sections => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GetSectionsResponseCopyWith<GetSectionsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetSectionsResponseCopyWith<$Res> {
  factory $GetSectionsResponseCopyWith(
          GetSectionsResponse value, $Res Function(GetSectionsResponse) then) =
      _$GetSectionsResponseCopyWithImpl<$Res, GetSectionsResponse>;
  @useResult
  $Res call({List<Section>? sections});
}

/// @nodoc
class _$GetSectionsResponseCopyWithImpl<$Res, $Val extends GetSectionsResponse>
    implements $GetSectionsResponseCopyWith<$Res> {
  _$GetSectionsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sections = freezed,
  }) {
    return _then(_value.copyWith(
      sections: freezed == sections
          ? _value.sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<Section>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetSectionsResponseImplCopyWith<$Res>
    implements $GetSectionsResponseCopyWith<$Res> {
  factory _$$GetSectionsResponseImplCopyWith(_$GetSectionsResponseImpl value,
          $Res Function(_$GetSectionsResponseImpl) then) =
      __$$GetSectionsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Section>? sections});
}

/// @nodoc
class __$$GetSectionsResponseImplCopyWithImpl<$Res>
    extends _$GetSectionsResponseCopyWithImpl<$Res, _$GetSectionsResponseImpl>
    implements _$$GetSectionsResponseImplCopyWith<$Res> {
  __$$GetSectionsResponseImplCopyWithImpl(_$GetSectionsResponseImpl _value,
      $Res Function(_$GetSectionsResponseImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sections = freezed,
  }) {
    return _then(_$GetSectionsResponseImpl(
      sections: freezed == sections
          ? _value._sections
          : sections // ignore: cast_nullable_to_non_nullable
              as List<Section>?,
    ));
  }
}

/// @nodoc

class _$GetSectionsResponseImpl extends _GetSectionsResponse {
  const _$GetSectionsResponseImpl({final List<Section>? sections})
      : _sections = sections,
        super._();

  final List<Section>? _sections;
  @override
  List<Section>? get sections {
    final value = _sections;
    if (value == null) return null;
    if (_sections is EqualUnmodifiableListView) return _sections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'GetSectionsResponse(sections: $sections)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetSectionsResponseImpl &&
            const DeepCollectionEquality().equals(other._sections, _sections));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_sections));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetSectionsResponseImplCopyWith<_$GetSectionsResponseImpl> get copyWith =>
      __$$GetSectionsResponseImplCopyWithImpl<_$GetSectionsResponseImpl>(
          this, _$identity);
}

abstract class _GetSectionsResponse extends GetSectionsResponse {
  const factory _GetSectionsResponse({final List<Section>? sections}) =
      _$GetSectionsResponseImpl;
  const _GetSectionsResponse._() : super._();

  @override
  List<Section>? get sections;
  @override
  @JsonKey(ignore: true)
  _$$GetSectionsResponseImplCopyWith<_$GetSectionsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
