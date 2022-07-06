import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fpdart/fpdart.dart';
import 'package:secret_dms/di/di.dart';
import 'package:secret_dms/models/states/auth_states.dart';
import 'package:secret_dms/models/user.dart';
import 'package:secret_dms/routes/route_names.dart';
import 'package:secret_dms/routes/routes.dart';

final initializationProvider = FutureProvider<Unit>((ref) async {
  final auth = ref.watch(authNotifierProvider.notifier);
  await auth.checkAndUpdateAuthStatus();
  return unit;
});

class AppWidget extends ConsumerStatefulWidget {
  const AppWidget({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _AppWidgetState();
}

class _AppWidgetState extends ConsumerState<AppWidget> {
  @override
  Widget build(BuildContext context) {
    ref.watch(initializationProvider);
    ref.listen<AuthState>(
      authNotifierProvider,
      ((previous, next) {
        next.maybeWhen(
          initial: () => appRouter.go(AppRouteNames.splash),
          unAuthenticated: () => appRouter.go(AppRouteNames.login),
          authenticated: (String token) =>
              appRouter.go(AppRouteNames.register, extra: token),
          registered: (AppUser user) {
            cachedUserManager.cacheUser(user);
            appRouter.go(AppRouteNames.home);
          },
          orElse: () {},
        );
      }),
    );
    return MaterialApp.router(
      title: 'Shhh',
      routeInformationProvider: appRouter.routeInformationProvider,
      routeInformationParser: appRouter.routeInformationParser,
      routerDelegate: appRouter.routerDelegate,
    );
  }
}
