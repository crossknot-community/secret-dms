import 'dart:async';

import 'package:secret_dms/routes/route_names.dart';
import 'package:secret_dms/routes/routes.dart';
import 'package:uni_links/uni_links.dart';

class AppLinkService {
  AppLinkService._();

  static late StreamSubscription _sub;
  static Future<void> handleInitialLink() async {
    final initialLink = await getInitialLink();
    if (initialLink != null) {
      final uri = Uri.parse(initialLink);
      final path = uri.path;
      final username = path.replaceAll('/', '');
      _navigateToProfilePage(username);
    }
  }

  static void _navigateToProfilePage(String username) =>
      appRouter.go(AppRouteNames.profile, extra: username);

  static void handleIncomingLinks() {
    _sub = linkStream.listen(
      (event) {
        if (event != null) {
          final uri = Uri.parse(event);
          final path = uri.path;
          print('path : $path');
        }
      },
      onError: (err) {},
    );
  }

  static void disposeLink() => _sub.cancel();
}
