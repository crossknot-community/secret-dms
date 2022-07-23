// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'app_link_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppLinkStates {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Uri link) linkDetected,
    required TResult Function(Failure failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Uri link)? linkDetected,
    TResult Function(Failure failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Uri link)? linkDetected,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AppLinkDetected value) linkDetected,
    required TResult Function(_ErrorDetected value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AppLinkDetected value)? linkDetected,
    TResult Function(_ErrorDetected value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AppLinkDetected value)? linkDetected,
    TResult Function(_ErrorDetected value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppLinkStatesCopyWith<$Res> {
  factory $AppLinkStatesCopyWith(
          AppLinkStates value, $Res Function(AppLinkStates) then) =
      _$AppLinkStatesCopyWithImpl<$Res>;
}

/// @nodoc
class _$AppLinkStatesCopyWithImpl<$Res>
    implements $AppLinkStatesCopyWith<$Res> {
  _$AppLinkStatesCopyWithImpl(this._value, this._then);

  final AppLinkStates _value;
  // ignore: unused_field
  final $Res Function(AppLinkStates) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$AppLinkStatesCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'AppLinkStates.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Uri link) linkDetected,
    required TResult Function(Failure failure) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Uri link)? linkDetected,
    TResult Function(Failure failure)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Uri link)? linkDetected,
    TResult Function(Failure failure)? error,
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
    required TResult Function(_AppLinkDetected value) linkDetected,
    required TResult Function(_ErrorDetected value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AppLinkDetected value)? linkDetected,
    TResult Function(_ErrorDetected value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AppLinkDetected value)? linkDetected,
    TResult Function(_ErrorDetected value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AppLinkStates {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_AppLinkDetectedCopyWith<$Res> {
  factory _$$_AppLinkDetectedCopyWith(
          _$_AppLinkDetected value, $Res Function(_$_AppLinkDetected) then) =
      __$$_AppLinkDetectedCopyWithImpl<$Res>;
  $Res call({Uri link});
}

/// @nodoc
class __$$_AppLinkDetectedCopyWithImpl<$Res>
    extends _$AppLinkStatesCopyWithImpl<$Res>
    implements _$$_AppLinkDetectedCopyWith<$Res> {
  __$$_AppLinkDetectedCopyWithImpl(
      _$_AppLinkDetected _value, $Res Function(_$_AppLinkDetected) _then)
      : super(_value, (v) => _then(v as _$_AppLinkDetected));

  @override
  _$_AppLinkDetected get _value => super._value as _$_AppLinkDetected;

  @override
  $Res call({
    Object? link = freezed,
  }) {
    return _then(_$_AppLinkDetected(
      link == freezed
          ? _value.link
          : link // ignore: cast_nullable_to_non_nullable
              as Uri,
    ));
  }
}

/// @nodoc

class _$_AppLinkDetected implements _AppLinkDetected {
  const _$_AppLinkDetected(this.link);

  @override
  final Uri link;

  @override
  String toString() {
    return 'AppLinkStates.linkDetected(link: $link)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppLinkDetected &&
            const DeepCollectionEquality().equals(other.link, link));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(link));

  @JsonKey(ignore: true)
  @override
  _$$_AppLinkDetectedCopyWith<_$_AppLinkDetected> get copyWith =>
      __$$_AppLinkDetectedCopyWithImpl<_$_AppLinkDetected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Uri link) linkDetected,
    required TResult Function(Failure failure) error,
  }) {
    return linkDetected(link);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Uri link)? linkDetected,
    TResult Function(Failure failure)? error,
  }) {
    return linkDetected?.call(link);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Uri link)? linkDetected,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (linkDetected != null) {
      return linkDetected(link);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AppLinkDetected value) linkDetected,
    required TResult Function(_ErrorDetected value) error,
  }) {
    return linkDetected(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AppLinkDetected value)? linkDetected,
    TResult Function(_ErrorDetected value)? error,
  }) {
    return linkDetected?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AppLinkDetected value)? linkDetected,
    TResult Function(_ErrorDetected value)? error,
    required TResult orElse(),
  }) {
    if (linkDetected != null) {
      return linkDetected(this);
    }
    return orElse();
  }
}

abstract class _AppLinkDetected implements AppLinkStates {
  const factory _AppLinkDetected(final Uri link) = _$_AppLinkDetected;

  Uri get link => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AppLinkDetectedCopyWith<_$_AppLinkDetected> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorDetectedCopyWith<$Res> {
  factory _$$_ErrorDetectedCopyWith(
          _$_ErrorDetected value, $Res Function(_$_ErrorDetected) then) =
      __$$_ErrorDetectedCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$$_ErrorDetectedCopyWithImpl<$Res>
    extends _$AppLinkStatesCopyWithImpl<$Res>
    implements _$$_ErrorDetectedCopyWith<$Res> {
  __$$_ErrorDetectedCopyWithImpl(
      _$_ErrorDetected _value, $Res Function(_$_ErrorDetected) _then)
      : super(_value, (v) => _then(v as _$_ErrorDetected));

  @override
  _$_ErrorDetected get _value => super._value as _$_ErrorDetected;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$_ErrorDetected(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_ErrorDetected implements _ErrorDetected {
  const _$_ErrorDetected(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'AppLinkStates.error(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ErrorDetected &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_ErrorDetectedCopyWith<_$_ErrorDetected> get copyWith =>
      __$$_ErrorDetectedCopyWithImpl<_$_ErrorDetected>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(Uri link) linkDetected,
    required TResult Function(Failure failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Uri link)? linkDetected,
    TResult Function(Failure failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(Uri link)? linkDetected,
    TResult Function(Failure failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_AppLinkDetected value) linkDetected,
    required TResult Function(_ErrorDetected value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AppLinkDetected value)? linkDetected,
    TResult Function(_ErrorDetected value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_AppLinkDetected value)? linkDetected,
    TResult Function(_ErrorDetected value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorDetected implements AppLinkStates {
  const factory _ErrorDetected(final Failure failure) = _$_ErrorDetected;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_ErrorDetectedCopyWith<_$_ErrorDetected> get copyWith =>
      throw _privateConstructorUsedError;
}
