import 'package:flutter/cupertino.dart';
import 'package:go_router/go_router.dart';
import 'package:secret_dms/routes/route_names.dart';
import 'package:secret_dms/ui/pages/home/home_page.dart';
import 'package:secret_dms/ui/pages/inbox/inbox_page.dart';
import 'package:secret_dms/ui/pages/login/login_page.dart';
import 'package:secret_dms/ui/pages/profile/profile_page.dart';
import 'package:secret_dms/ui/pages/register/register_page.dart';
import 'package:secret_dms/ui/pages/settings/settings_page.dart';
import 'package:secret_dms/ui/pages/splash/splash_page.dart';

final appRouter = GoRouter(routes: appRoutes);

final appRoutes = <GoRoute>[
  _generateGoRoute(AppRouteNames.splash, const SplashPage()),
  _generateGoRoute(AppRouteNames.home, const HomePage()),
  _generateGoRoute(AppRouteNames.login, const LoginPage()),
  _generateGoRoute(AppRouteNames.settings, const SettingsPage()),
  _generateGoRoute(AppRouteNames.inbox, const InboxPage()),
  GoRoute(
      path: AppRouteNames.register,
      pageBuilder: (context, state) {
        final String sessionToken = state.extra as String;
        return CustomTransitionPage<void>(
          child: RegisterPage(sessionToken),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(opacity: animation, child: child),
        );
      }),
  GoRoute(
      path: AppRouteNames.profile,
      pageBuilder: (context, state) {
        final String username = state.extra as String;
        return CustomTransitionPage<void>(
          child: ProfilePage(username: username),
          transitionsBuilder: (context, animation, secondaryAnimation, child) =>
              FadeTransition(opacity: animation, child: child),
        );
      }),
];

GoRoute _generateGoRoute(String path, Widget child) {
  return GoRoute(
    path: path,
    pageBuilder: (context, state) => CustomTransitionPage<void>(
      child: child,
      transitionsBuilder: (context, animation, secondaryAnimation, child) =>
          FadeTransition(opacity: animation, child: child),
    ),
  );
}
