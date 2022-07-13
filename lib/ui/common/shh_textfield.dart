import 'package:flutter/material.dart';
import 'package:secret_dms/constants/app_colors.dart';
import 'package:secret_dms/themes/app_dimensions.dart';
import 'package:secret_dms/themes/text_styles.dart';

class ShhTextField extends StatelessWidget {
  const ShhTextField({
    required this.textController,
    required this.hintText,
    this.validator,
    this.suffix,
    Key? key,
  }) : super(key: key);
  final String hintText;
  final TextEditingController textController;
  final String? Function(String?)? validator;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: const TextStyle(
        color: AppColors.neutral200,
      ),
      cursorHeight: extraLargeValue * 1.2,
      validator: validator,
      cursorColor: AppColors.white,
      controller: textController,
      decoration: InputDecoration(
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(smallValue),
          borderSide: const BorderSide(
            color: AppColors.white,
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(smallValue),
          borderSide: const BorderSide(
            color: AppColors.white,
            width: 1.5,
          ),
        ),
        hintText: hintText,
        hintStyle: AppTextStyles.p2.copyWith(
          color: AppColors.white,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(smallValue),
          borderSide: const BorderSide(
            color: AppColors.white,
            width: 1.5,
          ),
        ),
        contentPadding: EdgeInsets.all(extraLargeValue),
        fillColor: AppColors.white20,
        filled: true,
        focusColor: AppColors.dark700,
        suffixIcon: suffix,
      ),
      // maxLines: 3,
      // minLines: 2,
    );
  }
}
