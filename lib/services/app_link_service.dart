import 'dart:async';

import 'package:app_links/app_links.dart';
import 'package:secret_dms/routes/route_names.dart';
import 'package:secret_dms/routes/routes.dart';

class SecretDmLinkService {
  SecretDmLinkService(this._appLinks);

  final AppLinks _appLinks;

  late StreamSubscription _sub;
  Future<void> handleInitialLink() async {
    final initialLinkUri = await _appLinks.getInitialAppLink();
    if (initialLinkUri != null) {
      final username = _getUsernameFromUri(initialLinkUri);
      _navigateToProfilePage(username);
    }
  }

  String _getUsernameFromUri(Uri url) => url.path.replaceAll('/', '');

  void _navigateToProfilePage(String username) =>
      appRouter.go(AppRouteNames.profile, extra: username);

  void handleIncomingLinks() {
    _sub = _appLinks.uriLinkStream.listen(
      (linkUri) {
        final username = _getUsernameFromUri(linkUri);
        _navigateToProfilePage(username);
      },
      onError: (err) {},
    );
  }

  void disposeLink() => _sub.cancel();
}
