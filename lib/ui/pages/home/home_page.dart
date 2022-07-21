import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:secret_dms/constants/app_colors.dart';
import 'package:secret_dms/di/get_it_dependencies.dart';
import 'package:secret_dms/services/app_link_service.dart';
import 'package:secret_dms/themes/text_styles.dart';
import 'package:secret_dms/ui/common/base_background.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  @override
  void initState() {
    AppLinkService.handleInitialLink();
    AppLinkService.handleIncomingLinks();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BaseBackground(
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                appUser!.dmLink,
                style: AppTextStyles.p2.copyWith(color: AppColors.linkColor),
              ),
              TextButton(
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                  ),
                  // maximumSize: MaterialStateProperty.all(const Size(75, 50))),
                  onPressed: () {
                    Clipboard.setData(ClipboardData(text: appUser!.dmLink));
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        behavior: SnackBarBehavior.floating,
                        duration: const Duration(seconds: 1),
                        elevation: 1,
                        width: MediaQuery.of(context).size.width * 0.9,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        content: const Text('Link copied to clipboard!!'),
                      ),
                    );
                  },
                  child: Text(
                    'Copy Link',
                    style: AppTextStyles.p2,
                  )),
            ],
          )
        ],
      ),
    );
  }

  @override
  void dispose() {
    AppLinkService.disposeLink();
    super.dispose();
  }
}
