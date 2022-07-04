import 'package:appwrite/appwrite.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secret_dms/models/states/auth_states.dart';
import 'package:secret_dms/models/user.dart';
import 'package:secret_dms/services/auth_service.dart';

class AuthNotifer extends StateNotifier<AuthState> {
  AuthNotifer(this._authService, this._account)
      : super(const AuthState.loading());

  final BaseAuthService _authService;
  final Account _account;

  Future<void> checkAndUpdateAuthStatus() async {
    state = const AuthState.loading();
    final status = await _authService.checkAuthStatus();
    status.fold(
      (failure) async {
        final session = await _account.getSession(sessionId: 'current');
        if (session.userId.isNotEmpty) {
          return state = AuthState.authenticated(session.userId);
        }
        return state = const AuthState.unAuthenticated();
      },
      (user) => AuthState.registered(user),
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
    await _authService.registerAccount(appUser: appUser);
    await checkAndUpdateAuthStatus();
  }
}
