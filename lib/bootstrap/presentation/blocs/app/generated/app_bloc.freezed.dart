// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../app_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$AppEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkProject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckProject value) checkProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckProject value)? checkProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckProject value)? checkProject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppEventCopyWith<$Res> {
  factory $AppEventCopyWith(AppEvent value, $Res Function(AppEvent) then) =
      _$AppEventCopyWithImpl<$Res, AppEvent>;
}

/// @nodoc
class _$AppEventCopyWithImpl<$Res, $Val extends AppEvent>
    implements $AppEventCopyWith<$Res> {
  _$AppEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CheckProjectImplCopyWith<$Res> {
  factory _$$CheckProjectImplCopyWith(
          _$CheckProjectImpl value, $Res Function(_$CheckProjectImpl) then) =
      __$$CheckProjectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckProjectImplCopyWithImpl<$Res>
    extends _$AppEventCopyWithImpl<$Res, _$CheckProjectImpl>
    implements _$$CheckProjectImplCopyWith<$Res> {
  __$$CheckProjectImplCopyWithImpl(
      _$CheckProjectImpl _value, $Res Function(_$CheckProjectImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckProjectImpl implements _CheckProject {
  const _$CheckProjectImpl();

  @override
  String toString() {
    return 'AppEvent.checkProject()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckProjectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkProject,
  }) {
    return checkProject();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkProject,
  }) {
    return checkProject?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkProject,
    required TResult orElse(),
  }) {
    if (checkProject != null) {
      return checkProject();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckProject value) checkProject,
  }) {
    return checkProject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckProject value)? checkProject,
  }) {
    return checkProject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckProject value)? checkProject,
    required TResult orElse(),
  }) {
    if (checkProject != null) {
      return checkProject(this);
    }
    return orElse();
  }
}

abstract class _CheckProject implements AppEvent {
  const factory _CheckProject() = _$CheckProjectImpl;
}

/// @nodoc
mixin _$AppState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingProject,
    required TResult Function(ProjectEntity project) successCheckProject,
    required TResult Function(String message) failureCheckProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingProject,
    TResult? Function(ProjectEntity project)? successCheckProject,
    TResult? Function(String message)? failureCheckProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingProject,
    TResult Function(ProjectEntity project)? successCheckProject,
    TResult Function(String message)? failureCheckProject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingProject value) checkingProject,
    required TResult Function(_SuccessCheckProject value) successCheckProject,
    required TResult Function(_FailureCheckProject value) failureCheckProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingProject value)? checkingProject,
    TResult? Function(_SuccessCheckProject value)? successCheckProject,
    TResult? Function(_FailureCheckProject value)? failureCheckProject,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingProject value)? checkingProject,
    TResult Function(_SuccessCheckProject value)? successCheckProject,
    TResult Function(_FailureCheckProject value)? failureCheckProject,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppStateCopyWith<$Res> {
  factory $AppStateCopyWith(AppState value, $Res Function(AppState) then) =
      _$AppStateCopyWithImpl<$Res, AppState>;
}

/// @nodoc
class _$AppStateCopyWithImpl<$Res, $Val extends AppState>
    implements $AppStateCopyWith<$Res> {
  _$AppStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AppState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingProject,
    required TResult Function(ProjectEntity project) successCheckProject,
    required TResult Function(String message) failureCheckProject,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingProject,
    TResult? Function(ProjectEntity project)? successCheckProject,
    TResult? Function(String message)? failureCheckProject,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingProject,
    TResult Function(ProjectEntity project)? successCheckProject,
    TResult Function(String message)? failureCheckProject,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingProject value) checkingProject,
    required TResult Function(_SuccessCheckProject value) successCheckProject,
    required TResult Function(_FailureCheckProject value) failureCheckProject,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingProject value)? checkingProject,
    TResult? Function(_SuccessCheckProject value)? successCheckProject,
    TResult? Function(_FailureCheckProject value)? failureCheckProject,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingProject value)? checkingProject,
    TResult Function(_SuccessCheckProject value)? successCheckProject,
    TResult Function(_FailureCheckProject value)? failureCheckProject,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$CheckingProjectImplCopyWith<$Res> {
  factory _$$CheckingProjectImplCopyWith(_$CheckingProjectImpl value,
          $Res Function(_$CheckingProjectImpl) then) =
      __$$CheckingProjectImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckingProjectImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$CheckingProjectImpl>
    implements _$$CheckingProjectImplCopyWith<$Res> {
  __$$CheckingProjectImplCopyWithImpl(
      _$CheckingProjectImpl _value, $Res Function(_$CheckingProjectImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckingProjectImpl implements _CheckingProject {
  const _$CheckingProjectImpl();

  @override
  String toString() {
    return 'AppState.checkingProject()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckingProjectImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingProject,
    required TResult Function(ProjectEntity project) successCheckProject,
    required TResult Function(String message) failureCheckProject,
  }) {
    return checkingProject();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingProject,
    TResult? Function(ProjectEntity project)? successCheckProject,
    TResult? Function(String message)? failureCheckProject,
  }) {
    return checkingProject?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingProject,
    TResult Function(ProjectEntity project)? successCheckProject,
    TResult Function(String message)? failureCheckProject,
    required TResult orElse(),
  }) {
    if (checkingProject != null) {
      return checkingProject();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingProject value) checkingProject,
    required TResult Function(_SuccessCheckProject value) successCheckProject,
    required TResult Function(_FailureCheckProject value) failureCheckProject,
  }) {
    return checkingProject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingProject value)? checkingProject,
    TResult? Function(_SuccessCheckProject value)? successCheckProject,
    TResult? Function(_FailureCheckProject value)? failureCheckProject,
  }) {
    return checkingProject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingProject value)? checkingProject,
    TResult Function(_SuccessCheckProject value)? successCheckProject,
    TResult Function(_FailureCheckProject value)? failureCheckProject,
    required TResult orElse(),
  }) {
    if (checkingProject != null) {
      return checkingProject(this);
    }
    return orElse();
  }
}

abstract class _CheckingProject implements AppState {
  const factory _CheckingProject() = _$CheckingProjectImpl;
}

/// @nodoc
abstract class _$$SuccessCheckProjectImplCopyWith<$Res> {
  factory _$$SuccessCheckProjectImplCopyWith(_$SuccessCheckProjectImpl value,
          $Res Function(_$SuccessCheckProjectImpl) then) =
      __$$SuccessCheckProjectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({ProjectEntity project});

  $ProjectEntityCopyWith<$Res> get project;
}

/// @nodoc
class __$$SuccessCheckProjectImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$SuccessCheckProjectImpl>
    implements _$$SuccessCheckProjectImplCopyWith<$Res> {
  __$$SuccessCheckProjectImplCopyWithImpl(_$SuccessCheckProjectImpl _value,
      $Res Function(_$SuccessCheckProjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? project = null,
  }) {
    return _then(_$SuccessCheckProjectImpl(
      null == project
          ? _value.project
          : project // ignore: cast_nullable_to_non_nullable
              as ProjectEntity,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ProjectEntityCopyWith<$Res> get project {
    return $ProjectEntityCopyWith<$Res>(_value.project, (value) {
      return _then(_value.copyWith(project: value));
    });
  }
}

/// @nodoc

class _$SuccessCheckProjectImpl implements _SuccessCheckProject {
  const _$SuccessCheckProjectImpl(this.project);

  @override
  final ProjectEntity project;

  @override
  String toString() {
    return 'AppState.successCheckProject(project: $project)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SuccessCheckProjectImpl &&
            (identical(other.project, project) || other.project == project));
  }

  @override
  int get hashCode => Object.hash(runtimeType, project);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCheckProjectImplCopyWith<_$SuccessCheckProjectImpl> get copyWith =>
      __$$SuccessCheckProjectImplCopyWithImpl<_$SuccessCheckProjectImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingProject,
    required TResult Function(ProjectEntity project) successCheckProject,
    required TResult Function(String message) failureCheckProject,
  }) {
    return successCheckProject(project);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingProject,
    TResult? Function(ProjectEntity project)? successCheckProject,
    TResult? Function(String message)? failureCheckProject,
  }) {
    return successCheckProject?.call(project);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingProject,
    TResult Function(ProjectEntity project)? successCheckProject,
    TResult Function(String message)? failureCheckProject,
    required TResult orElse(),
  }) {
    if (successCheckProject != null) {
      return successCheckProject(project);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingProject value) checkingProject,
    required TResult Function(_SuccessCheckProject value) successCheckProject,
    required TResult Function(_FailureCheckProject value) failureCheckProject,
  }) {
    return successCheckProject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingProject value)? checkingProject,
    TResult? Function(_SuccessCheckProject value)? successCheckProject,
    TResult? Function(_FailureCheckProject value)? failureCheckProject,
  }) {
    return successCheckProject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingProject value)? checkingProject,
    TResult Function(_SuccessCheckProject value)? successCheckProject,
    TResult Function(_FailureCheckProject value)? failureCheckProject,
    required TResult orElse(),
  }) {
    if (successCheckProject != null) {
      return successCheckProject(this);
    }
    return orElse();
  }
}

abstract class _SuccessCheckProject implements AppState {
  const factory _SuccessCheckProject(final ProjectEntity project) =
      _$SuccessCheckProjectImpl;

  ProjectEntity get project;
  @JsonKey(ignore: true)
  _$$SuccessCheckProjectImplCopyWith<_$SuccessCheckProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FailureCheckProjectImplCopyWith<$Res> {
  factory _$$FailureCheckProjectImplCopyWith(_$FailureCheckProjectImpl value,
          $Res Function(_$FailureCheckProjectImpl) then) =
      __$$FailureCheckProjectImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$FailureCheckProjectImplCopyWithImpl<$Res>
    extends _$AppStateCopyWithImpl<$Res, _$FailureCheckProjectImpl>
    implements _$$FailureCheckProjectImplCopyWith<$Res> {
  __$$FailureCheckProjectImplCopyWithImpl(_$FailureCheckProjectImpl _value,
      $Res Function(_$FailureCheckProjectImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$FailureCheckProjectImpl(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FailureCheckProjectImpl implements _FailureCheckProject {
  const _$FailureCheckProjectImpl({required this.message});

  @override
  final String message;

  @override
  String toString() {
    return 'AppState.failureCheckProject(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FailureCheckProjectImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FailureCheckProjectImplCopyWith<_$FailureCheckProjectImpl> get copyWith =>
      __$$FailureCheckProjectImplCopyWithImpl<_$FailureCheckProjectImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() checkingProject,
    required TResult Function(ProjectEntity project) successCheckProject,
    required TResult Function(String message) failureCheckProject,
  }) {
    return failureCheckProject(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? checkingProject,
    TResult? Function(ProjectEntity project)? successCheckProject,
    TResult? Function(String message)? failureCheckProject,
  }) {
    return failureCheckProject?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? checkingProject,
    TResult Function(ProjectEntity project)? successCheckProject,
    TResult Function(String message)? failureCheckProject,
    required TResult orElse(),
  }) {
    if (failureCheckProject != null) {
      return failureCheckProject(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_CheckingProject value) checkingProject,
    required TResult Function(_SuccessCheckProject value) successCheckProject,
    required TResult Function(_FailureCheckProject value) failureCheckProject,
  }) {
    return failureCheckProject(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_CheckingProject value)? checkingProject,
    TResult? Function(_SuccessCheckProject value)? successCheckProject,
    TResult? Function(_FailureCheckProject value)? failureCheckProject,
  }) {
    return failureCheckProject?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_CheckingProject value)? checkingProject,
    TResult Function(_SuccessCheckProject value)? successCheckProject,
    TResult Function(_FailureCheckProject value)? failureCheckProject,
    required TResult orElse(),
  }) {
    if (failureCheckProject != null) {
      return failureCheckProject(this);
    }
    return orElse();
  }
}

abstract class _FailureCheckProject implements AppState {
  const factory _FailureCheckProject({required final String message}) =
      _$FailureCheckProjectImpl;

  String get message;
  @JsonKey(ignore: true)
  _$$FailureCheckProjectImplCopyWith<_$FailureCheckProjectImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
