import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secret_dms/models/failure.dart';
import 'package:secret_dms/models/states/app_link_states.dart';
import 'package:secret_dms/services/app_link_service.dart';

class AppLinkNotifier extends StateNotifier<AppLinkStates> {
  AppLinkNotifier(this._linkService) : super(const AppLinkStates.initial());
  final AppLinkService _linkService;
  late StreamSubscription<Uri> _linkSubscription;

  Future<void> handleIncomingLinks() async {
    final initialLink = await _linkService.getInitialLink();
    state = initialLink.fold(
      (uri) => AppLinkStates.linkDetected(uri),
      (error) => AppLinkStates.error(error),
    );
    _linkSubscription = _linkService.getLinkStream().listen(
          (uri) => state = AppLinkStates.linkDetected(uri),
          onError: (_) => state = AppLinkStates.error(
            Failure('Oops! It seems, you tapped on a wrong link'),
          ),
        );
  }

  void cancelLinkSubscription() => _linkSubscription.cancel();
}
