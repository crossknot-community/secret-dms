import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage(this.sessionToken, {Key? key}) : super(key: key);
  final String sessionToken;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text("Register View")),
    );
  }
}
