import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:secret_dms/constants/app_colors.dart';
import 'package:secret_dms/themes/app_dimensions.dart';
import 'package:secret_dms/themes/size_config.dart';
import 'package:secret_dms/themes/text_styles.dart';

void showSnackbarWidget(BuildContext context, String message) =>
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: AppColors.white20.withOpacity(0.09),
        onVisible: () async => await HapticFeedback.mediumImpact(),
        elevation: 0,
        padding: EdgeInsets.all(extraLargeValue),
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: AppColors.white50,
          ),
          borderRadius: BorderRadius.circular(mediumValue),
        ),
        behavior: SnackBarBehavior.floating,
        content: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 2,
            sigmaY: 3,
          ),
          child: Container(
            width: SizeConfig.deviceWidth! * 90,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(extraLargeValue * 2)),
            child: Text(message,
                style: AppTextStyles.p3.copyWith(
                  color: AppColors.neutral100,
                )),
          ),
        ),
      ),
    );
