import 'package:flutter/material.dart';
import 'package:secret_dms/constants/app_colors.dart';
import 'package:secret_dms/themes/app_dimensions.dart';
import 'package:secret_dms/themes/text_styles.dart';

class ShhButton extends StatelessWidget {
  const ShhButton({
    required this.onPressed,
    required this.text,
    this.width,
    this.height,
    this.icon,
    Key? key,
  }) : super(key: key);

  final Function() onPressed;
  final String text;
  final double? width;
  final double? height;
  final Icon? icon;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: width ?? largeValue * 2,
      height: height ?? largeValue,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.adjustSize),
      ),
      color: AppColors.white,
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null) icon!,
          if (icon != null) hSizedBox2,
          Text(
            text,
            style: AppTextStyles.p3,
          ),
        ],
      ),
    );
  }
}
