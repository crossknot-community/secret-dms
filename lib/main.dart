import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secret_dms/di/di.dart';
import 'package:secret_dms/ui/app_widget.dart';
import 'package:secret_dms/utils/provider_logger.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  setupDependencies();

  runApp(
    ProviderScope(
      observers: [Logger()],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => const AppWidget();
}
