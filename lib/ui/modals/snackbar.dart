import 'package:flutter/material.dart';
import 'package:secret_dms/themes/text_styles.dart';

void showSnackbarWidget(BuildContext context, String message) =>
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message, style: AppTextStyles.p3),
      ),
    );
