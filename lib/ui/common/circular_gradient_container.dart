import 'dart:ui';

import 'package:flutter/material.dart';

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
    return BackdropFilter(
      filter: ImageFilter.dilate(radiusX: 200, radiusY: 200),
      child: Container(
        height: radius,
        width: radius,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
              color: color,
              blurRadius: 200,
              spreadRadius: radius,
            )
          ],
        ),
      ),
    );
  }
}
