import 'package:flutter/material.dart';

import 'animated_background.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    Key? key,
    this.onPressed,
    required this.beginGradient,
    required this.endGradient,
    required this.borderRadius,
    required this.child,
    required this.strokeWidth,
    required this.background,
  }) : super(key: key);
  final double borderRadius;
  final Color background;
  final void Function()? onPressed;
  final Widget child;
  final Gradient beginGradient;
  final Gradient endGradient;
  final double strokeWidth;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: AnimatedBackground(
        beginGradient: beginGradient,
        endGradient: endGradient,
        padding: EdgeInsets.all(strokeWidth),
        borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
        child: DecoratedBox(
          decoration: BoxDecoration(
              color: background,
              borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
          child: child,
        ),
      ),
      onTap: onPressed,
    );
  }
}
