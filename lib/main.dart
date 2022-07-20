import 'dart:async';

import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secret_dms/di/di.dart';
import 'package:secret_dms/ui/app_widget.dart';
import 'package:secret_dms/utils/provider_logger.dart';

Future<void> main() async {
  runZonedGuarded(() async {
    WidgetsFlutterBinding.ensureInitialized();
    await dotenv.load();
    print('Dot Env loaded');
    setupDependencies();

    runApp(
      ProviderScope(
        observers: [Logger()],
        child: const MyApp(),
      ),
    );
  }, (error, stack) {
    print('$error');
  });
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const AppWidget();
}
