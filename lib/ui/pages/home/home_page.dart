import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:secret_dms/di/di.dart';
import 'package:secret_dms/models/states/app_link_states.dart';
import 'package:secret_dms/routes/route_names.dart';
import 'package:secret_dms/ui/common/base_background.dart';
import 'package:secret_dms/ui/modals/snackbar.dart';
import 'package:secret_dms/utils/username_from_uri.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _listenToIncomingAppLinks();
    return const Scaffold(
      body: BaseBackground(
        children: [
          Center(child: Text("Home View")),
        ],
      ),
    );
  }

  void _listenToIncomingAppLinks() {
    ref.listen<AppLinkStates>(
      appLinkNotifier,
      (previous, next) {
        next.maybeWhen(
          linkDetected: (uri) =>
              context.go(AppRouteNames.profile, extra: getUsernameFromUri(uri)),
          error: (failure) => showSnackbarWidget(context, failure.message),
          orElse: () {},
        );
      },
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
