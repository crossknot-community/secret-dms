import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secret_dms/models/failure.dart';
import 'package:secret_dms/models/user.dart';

part 'auth_states.freezed.dart';

@freezed
abstract class AuthState with _$AuthState {
  const factory AuthState.initial() = _AuthStatus;
  const factory AuthState.loading() = _AuthStatusLoading;
  const factory AuthState.authenticated(String sessionToken) = _Authenticated;
  const factory AuthState.registered(AppUser user) = _Registered;
  const factory AuthState.unAuthenticated() = _UnAuthenticated;
  const factory AuthState.failure(Failure failure) = _Failure;
}
