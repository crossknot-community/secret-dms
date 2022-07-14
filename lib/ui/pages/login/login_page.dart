import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:secret_dms/constants/app_assets.dart';
import 'package:secret_dms/di/di.dart';
import 'package:secret_dms/models/states/auth_states.dart';
import 'package:secret_dms/themes/app_dimensions.dart';
import 'package:secret_dms/themes/size_config.dart';
import 'package:secret_dms/ui/common/base_background.dart';
import 'package:secret_dms/ui/common/shh_button.dart';
import 'package:secret_dms/ui/modals/snackbar.dart';

class LoginPage extends ConsumerStatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends ConsumerState<LoginPage> {
  @override
  Widget build(BuildContext context) {
    ref.listen<AuthState>(authNotifierProvider, (previous, next) {
      next.maybeWhen(
        failure: (failure) => showSnackbarWidget(context, failure.message),
        orElse: () {},
      );
    });
    return Scaffold(
      body: BaseBackground(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(AppAssets.logo),
              vSizedBox4,
              ShhButton(
                onPressed: () {
                  ref.watch(authNotifierProvider.notifier).signInUser();
                },
                text: "Get Questions",
                width: SizeConfig.deviceWidth! * 80,
                height: SizeConfig.deviceHeight! * 7,
              )
            ],
          ),
        ],
      ),
    );
  }
}
