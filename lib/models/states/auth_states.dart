import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:secret_dms/models/user.dart';
import 'package:secret_dms/utils/failure.dart';

part 'auth_states.freezed.dart';

@freezed
abstract class AuthStatus with _$AuthStatus {
  const factory AuthStatus.init() = _AuthStatus;
  const factory AuthStatus.loading() = _AuthStatusLoading;
  const factory AuthStatus.authenticated(String sessionToken) = _Authenticated;
  const factory AuthStatus.registered(AppUser user) = _Registered;
  const factory AuthStatus.unAuthenticated() = _UnAuthenticated;
  const factory AuthStatus.failure(Failure failure) = _Failure;
}
