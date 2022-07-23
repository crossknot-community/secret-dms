import 'package:flutter/material.dart';
import 'package:secret_dms/constants/app_colors.dart';
import 'package:secret_dms/themes/text_styles.dart';
import 'package:secret_dms/ui/common/circular_gradient_container.dart';

/// [BaseBackground] widget is a basic stack widget with some customization to fit the needs of design. It's children can have all the properties of [Stack].
class BaseBackground extends StatelessWidget {
  const BaseBackground({Key? key, required this.children}) : super(key: key);

  /// children is a [List<Widget>] and it is under a [Stack] widget so it can be positioned by wrapping a [Widget] in [Positioned] widget.
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
      ),
      child: Stack(
        fit: StackFit.expand,
        children: [
          Positioned(
            top: -100.adjustSize,
            left: -100.adjustSize,
            child: CircularGradientContainer(
              radius: 250.adjustSize,
              color: AppColors.aqua10,
            ),
          ),
          Positioned(
            bottom: -30.adjustSize,
            right: -100.adjustSize,
            child: CircularGradientContainer(
              radius: 200.adjustSize,
              color: AppColors.pink15,
            ),
          ),
          ...children,
        ],
      ),
    );
  }
}
