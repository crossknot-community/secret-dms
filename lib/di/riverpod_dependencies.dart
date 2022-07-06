import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secret_dms/di/get_it_dependencies.dart';
import 'package:secret_dms/models/states/auth_states.dart';
import 'package:secret_dms/notifiers/auth_notifier.dart';

final authNotifierProvider = StateNotifierProvider<AuthNotifer, AuthState>(
    (ref) => AuthNotifer(authService));
