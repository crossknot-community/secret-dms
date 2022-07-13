import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secret_dms/di/di.dart';
import 'package:secret_dms/models/states/auth_states.dart';
import 'package:secret_dms/ui/common/base_background.dart';
import 'package:secret_dms/ui/modals/snackbar.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage(this.sessionToken, {Key? key}) : super(key: key);
  final String sessionToken;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    ref.listen<AuthState>(authNotifierProvider, (previous, next) {
      next.maybeWhen(
        failure: (failure) => showSnackbarWidget(context, failure.message),
        orElse: () {},
      );
    });
    return const Scaffold(
      body: BaseBackground(
        children: [],
      ),
    );
  }
}
