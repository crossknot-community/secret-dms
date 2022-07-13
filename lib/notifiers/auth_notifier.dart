import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secret_dms/models/states/auth_states.dart';
import 'package:secret_dms/models/user.dart';
import 'package:secret_dms/services/auth_service.dart';

class AuthNotifer extends StateNotifier<AuthState> {
  AuthNotifer(this._authService) : super(const AuthState.loading());

  final BaseAuthService _authService;

  Future<void> checkAndUpdateAuthStatus() async {
    state = const AuthState.loading();
    final status = await _authService.checkAuthStatus();
    status.fold(
      (authStatus) async {
        return state = authStatus.fold(
          (failure) => const AuthState.unAuthenticated(),
          (sessionToken) => AuthState.authenticated(sessionToken),
        );
      },
      (user) => state = AuthState.registered(user),
    );
  }

  Future<void> signInUser() async {
    state = const AuthState.loading();
    final status = await _authService.signInAnonymously();
    state = status.fold(
      (failure) => AuthState.failure(failure),
      (session) => AuthState.authenticated(session.userId),
    );
  }

  Future<void> registerUser({
    required String username,
    required String dmLink,
    required String sessionToken,
  }) async {
    final AppUser appUser =
        AppUser(id: sessionToken, username: username, dmLink: dmLink);
    final status = await _authService.registerAccount(appUser: appUser);
    status.fold(
      (failure) => state = AuthState.failure(failure),
      (unit) => checkAndUpdateAuthStatus(),
    );
  }

  Future<void> signout() async {
    state = const AuthState.loading();
    _authService.signout();
    await checkAndUpdateAuthStatus();
  }
}
