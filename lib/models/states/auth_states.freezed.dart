// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'auth_states.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String sessionToken) authenticated,
    required TResult Function(AppUser user) registered,
    required TResult Function() unAuthenticated,
    required TResult Function(Failure failure) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String sessionToken)? authenticated,
    TResult Function(AppUser user)? registered,
    TResult Function()? unAuthenticated,
    TResult Function(Failure failure)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String sessionToken)? authenticated,
    TResult Function(AppUser user)? registered,
    TResult Function()? unAuthenticated,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStatus value) initial,
    required TResult Function(_AuthStatusLoading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Registered value) registered,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_Failure value) failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStatus value)? initial,
    TResult Function(_AuthStatusLoading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Registered value)? registered,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Failure value)? failure,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStatus value)? initial,
    TResult Function(_AuthStatusLoading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Registered value)? registered,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class _$$_AuthStatusCopyWith<$Res> {
  factory _$$_AuthStatusCopyWith(
          _$_AuthStatus value, $Res Function(_$_AuthStatus) then) =
      __$$_AuthStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthStatusCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_AuthStatusCopyWith<$Res> {
  __$$_AuthStatusCopyWithImpl(
      _$_AuthStatus _value, $Res Function(_$_AuthStatus) _then)
      : super(_value, (v) => _then(v as _$_AuthStatus));

  @override
  _$_AuthStatus get _value => super._value as _$_AuthStatus;
}

/// @nodoc

class _$_AuthStatus implements _AuthStatus {
  const _$_AuthStatus();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String sessionToken) authenticated,
    required TResult Function(AppUser user) registered,
    required TResult Function() unAuthenticated,
    required TResult Function(Failure failure) failure,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String sessionToken)? authenticated,
    TResult Function(AppUser user)? registered,
    TResult Function()? unAuthenticated,
    TResult Function(Failure failure)? failure,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String sessionToken)? authenticated,
    TResult Function(AppUser user)? registered,
    TResult Function()? unAuthenticated,
    TResult Function(Failure failure)? failure,
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
    required TResult Function(_AuthStatus value) initial,
    required TResult Function(_AuthStatusLoading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Registered value) registered,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_Failure value) failure,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStatus value)? initial,
    TResult Function(_AuthStatusLoading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Registered value)? registered,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Failure value)? failure,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStatus value)? initial,
    TResult Function(_AuthStatusLoading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Registered value)? registered,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _AuthStatus implements AuthState {
  const factory _AuthStatus() = _$_AuthStatus;
}

/// @nodoc
abstract class _$$_AuthStatusLoadingCopyWith<$Res> {
  factory _$$_AuthStatusLoadingCopyWith(_$_AuthStatusLoading value,
          $Res Function(_$_AuthStatusLoading) then) =
      __$$_AuthStatusLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthStatusLoadingCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_AuthStatusLoadingCopyWith<$Res> {
  __$$_AuthStatusLoadingCopyWithImpl(
      _$_AuthStatusLoading _value, $Res Function(_$_AuthStatusLoading) _then)
      : super(_value, (v) => _then(v as _$_AuthStatusLoading));

  @override
  _$_AuthStatusLoading get _value => super._value as _$_AuthStatusLoading;
}

/// @nodoc

class _$_AuthStatusLoading implements _AuthStatusLoading {
  const _$_AuthStatusLoading();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AuthStatusLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String sessionToken) authenticated,
    required TResult Function(AppUser user) registered,
    required TResult Function() unAuthenticated,
    required TResult Function(Failure failure) failure,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String sessionToken)? authenticated,
    TResult Function(AppUser user)? registered,
    TResult Function()? unAuthenticated,
    TResult Function(Failure failure)? failure,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String sessionToken)? authenticated,
    TResult Function(AppUser user)? registered,
    TResult Function()? unAuthenticated,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStatus value) initial,
    required TResult Function(_AuthStatusLoading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Registered value) registered,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_Failure value) failure,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStatus value)? initial,
    TResult Function(_AuthStatusLoading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Registered value)? registered,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Failure value)? failure,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStatus value)? initial,
    TResult Function(_AuthStatusLoading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Registered value)? registered,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _AuthStatusLoading implements AuthState {
  const factory _AuthStatusLoading() = _$_AuthStatusLoading;
}

/// @nodoc
abstract class _$$_AuthenticatedCopyWith<$Res> {
  factory _$$_AuthenticatedCopyWith(
          _$_Authenticated value, $Res Function(_$_Authenticated) then) =
      __$$_AuthenticatedCopyWithImpl<$Res>;
  $Res call({String sessionToken});
}

/// @nodoc
class __$$_AuthenticatedCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_AuthenticatedCopyWith<$Res> {
  __$$_AuthenticatedCopyWithImpl(
      _$_Authenticated _value, $Res Function(_$_Authenticated) _then)
      : super(_value, (v) => _then(v as _$_Authenticated));

  @override
  _$_Authenticated get _value => super._value as _$_Authenticated;

  @override
  $Res call({
    Object? sessionToken = freezed,
  }) {
    return _then(_$_Authenticated(
      sessionToken == freezed
          ? _value.sessionToken
          : sessionToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated(this.sessionToken);

  @override
  final String sessionToken;

  @override
  String toString() {
    return 'AuthState.authenticated(sessionToken: $sessionToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Authenticated &&
            const DeepCollectionEquality()
                .equals(other.sessionToken, sessionToken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(sessionToken));

  @JsonKey(ignore: true)
  @override
  _$$_AuthenticatedCopyWith<_$_Authenticated> get copyWith =>
      __$$_AuthenticatedCopyWithImpl<_$_Authenticated>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String sessionToken) authenticated,
    required TResult Function(AppUser user) registered,
    required TResult Function() unAuthenticated,
    required TResult Function(Failure failure) failure,
  }) {
    return authenticated(sessionToken);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String sessionToken)? authenticated,
    TResult Function(AppUser user)? registered,
    TResult Function()? unAuthenticated,
    TResult Function(Failure failure)? failure,
  }) {
    return authenticated?.call(sessionToken);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String sessionToken)? authenticated,
    TResult Function(AppUser user)? registered,
    TResult Function()? unAuthenticated,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(sessionToken);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStatus value) initial,
    required TResult Function(_AuthStatusLoading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Registered value) registered,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_Failure value) failure,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStatus value)? initial,
    TResult Function(_AuthStatusLoading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Registered value)? registered,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Failure value)? failure,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStatus value)? initial,
    TResult Function(_AuthStatusLoading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Registered value)? registered,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated(final String sessionToken) = _$_Authenticated;

  String get sessionToken => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_AuthenticatedCopyWith<_$_Authenticated> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RegisteredCopyWith<$Res> {
  factory _$$_RegisteredCopyWith(
          _$_Registered value, $Res Function(_$_Registered) then) =
      __$$_RegisteredCopyWithImpl<$Res>;
  $Res call({AppUser user});
}

/// @nodoc
class __$$_RegisteredCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_RegisteredCopyWith<$Res> {
  __$$_RegisteredCopyWithImpl(
      _$_Registered _value, $Res Function(_$_Registered) _then)
      : super(_value, (v) => _then(v as _$_Registered));

  @override
  _$_Registered get _value => super._value as _$_Registered;

  @override
  $Res call({
    Object? user = freezed,
  }) {
    return _then(_$_Registered(
      user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as AppUser,
    ));
  }
}

/// @nodoc

class _$_Registered implements _Registered {
  const _$_Registered(this.user);

  @override
  final AppUser user;

  @override
  String toString() {
    return 'AuthState.registered(user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Registered &&
            const DeepCollectionEquality().equals(other.user, user));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(user));

  @JsonKey(ignore: true)
  @override
  _$$_RegisteredCopyWith<_$_Registered> get copyWith =>
      __$$_RegisteredCopyWithImpl<_$_Registered>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String sessionToken) authenticated,
    required TResult Function(AppUser user) registered,
    required TResult Function() unAuthenticated,
    required TResult Function(Failure failure) failure,
  }) {
    return registered(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String sessionToken)? authenticated,
    TResult Function(AppUser user)? registered,
    TResult Function()? unAuthenticated,
    TResult Function(Failure failure)? failure,
  }) {
    return registered?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String sessionToken)? authenticated,
    TResult Function(AppUser user)? registered,
    TResult Function()? unAuthenticated,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStatus value) initial,
    required TResult Function(_AuthStatusLoading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Registered value) registered,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_Failure value) failure,
  }) {
    return registered(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStatus value)? initial,
    TResult Function(_AuthStatusLoading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Registered value)? registered,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Failure value)? failure,
  }) {
    return registered?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStatus value)? initial,
    TResult Function(_AuthStatusLoading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Registered value)? registered,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (registered != null) {
      return registered(this);
    }
    return orElse();
  }
}

abstract class _Registered implements AuthState {
  const factory _Registered(final AppUser user) = _$_Registered;

  AppUser get user => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_RegisteredCopyWith<_$_Registered> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UnAuthenticatedCopyWith<$Res> {
  factory _$$_UnAuthenticatedCopyWith(
          _$_UnAuthenticated value, $Res Function(_$_UnAuthenticated) then) =
      __$$_UnAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_UnAuthenticatedCopyWith<$Res> {
  __$$_UnAuthenticatedCopyWithImpl(
      _$_UnAuthenticated _value, $Res Function(_$_UnAuthenticated) _then)
      : super(_value, (v) => _then(v as _$_UnAuthenticated));

  @override
  _$_UnAuthenticated get _value => super._value as _$_UnAuthenticated;
}

/// @nodoc

class _$_UnAuthenticated implements _UnAuthenticated {
  const _$_UnAuthenticated();

  @override
  String toString() {
    return 'AuthState.unAuthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_UnAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String sessionToken) authenticated,
    required TResult Function(AppUser user) registered,
    required TResult Function() unAuthenticated,
    required TResult Function(Failure failure) failure,
  }) {
    return unAuthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String sessionToken)? authenticated,
    TResult Function(AppUser user)? registered,
    TResult Function()? unAuthenticated,
    TResult Function(Failure failure)? failure,
  }) {
    return unAuthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String sessionToken)? authenticated,
    TResult Function(AppUser user)? registered,
    TResult Function()? unAuthenticated,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStatus value) initial,
    required TResult Function(_AuthStatusLoading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Registered value) registered,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_Failure value) failure,
  }) {
    return unAuthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStatus value)? initial,
    TResult Function(_AuthStatusLoading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Registered value)? registered,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Failure value)? failure,
  }) {
    return unAuthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStatus value)? initial,
    TResult Function(_AuthStatusLoading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Registered value)? registered,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (unAuthenticated != null) {
      return unAuthenticated(this);
    }
    return orElse();
  }
}

abstract class _UnAuthenticated implements AuthState {
  const factory _UnAuthenticated() = _$_UnAuthenticated;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
  $Res call({Failure failure});
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res> extends _$AuthStateCopyWithImpl<$Res>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, (v) => _then(v as _$_Failure));

  @override
  _$_Failure get _value => super._value as _$_Failure;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$_Failure(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as Failure,
    ));
  }
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure(this.failure);

  @override
  final Failure failure;

  @override
  String toString() {
    return 'AuthState.failure(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Failure &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      __$$_FailureCopyWithImpl<_$_Failure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String sessionToken) authenticated,
    required TResult Function(AppUser user) registered,
    required TResult Function() unAuthenticated,
    required TResult Function(Failure failure) failure,
  }) {
    return failure(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String sessionToken)? authenticated,
    TResult Function(AppUser user)? registered,
    TResult Function()? unAuthenticated,
    TResult Function(Failure failure)? failure,
  }) {
    return failure?.call(this.failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String sessionToken)? authenticated,
    TResult Function(AppUser user)? registered,
    TResult Function()? unAuthenticated,
    TResult Function(Failure failure)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this.failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AuthStatus value) initial,
    required TResult Function(_AuthStatusLoading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Registered value) registered,
    required TResult Function(_UnAuthenticated value) unAuthenticated,
    required TResult Function(_Failure value) failure,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_AuthStatus value)? initial,
    TResult Function(_AuthStatusLoading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Registered value)? registered,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Failure value)? failure,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_AuthStatus value)? initial,
    TResult Function(_AuthStatusLoading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Registered value)? registered,
    TResult Function(_UnAuthenticated value)? unAuthenticated,
    TResult Function(_Failure value)? failure,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements AuthState {
  const factory _Failure(final Failure failure) = _$_Failure;

  Failure get failure => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_FailureCopyWith<_$_Failure> get copyWith =>
      throw _privateConstructorUsedError;
}
