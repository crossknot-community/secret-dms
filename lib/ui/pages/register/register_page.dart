import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconsax/iconsax.dart';
import 'package:secret_dms/constants/app_assets.dart';
import 'package:secret_dms/constants/app_colors.dart';
import 'package:secret_dms/di/di.dart';
import 'package:secret_dms/models/states/auth_states.dart';
import 'package:secret_dms/themes/size_config.dart';
import 'package:secret_dms/ui/common/base_background.dart';
import 'package:secret_dms/ui/common/shh_textfield.dart';
import 'package:secret_dms/ui/modals/snackbar.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage(this.sessionToken, {Key? key}) : super(key: key);
  final String sessionToken;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  final TextEditingController _userController = TextEditingController();
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
              SizedBox(
                width: SizeConfig.deviceWidth! * 85,
                child: ShhTextField(
                  textController: _userController,
                  hintText: '@username',
                  suffix: GestureDetector(
                    onTap: () {
                      if (_userController.text.isNotEmpty) {
                        ref.watch(authNotifierProvider.notifier).registerUser(
                              username: _userController.text,
                              dmLink: 'dmLink',
                              sessionToken: widget.sessionToken,
                            );
                      }
                    },
                    child: const Icon(
                      Iconsax.send1,
                      color: AppColors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
