import 'package:flutter/material.dart';
import 'package:secret_dms/themes/text_styles.dart';

class CircularGradientContainer extends StatelessWidget {
  const CircularGradientContainer({
    required this.radius,
    required this.color,
    Key? key,
  }) : super(key: key);

  final double radius;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: radius,
      width: radius,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        boxShadow: [
          BoxShadow(
            color: color,
            blurRadius: 100.adjustSize,
            spreadRadius: radius,
          )
        ],
      ),
    );
  }
}
