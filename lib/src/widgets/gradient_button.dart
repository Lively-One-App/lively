import 'package:flutter/material.dart';

class GradientButton extends StatelessWidget {
  const GradientButton({
    Key? key,
    required this.borderRadius,
    required this.child,
    required this.stroukeWidth,
    required this.background,
    this.onPressed,
    this.gradient,
  }) : super(key: key);
  final double borderRadius;
  final Color background;
  final void Function()? onPressed;
  final Widget child;
  final Gradient? gradient;
  final double stroukeWidth;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        padding: EdgeInsets.all(stroukeWidth),
        decoration: BoxDecoration(
            gradient: gradient,
            borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
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
