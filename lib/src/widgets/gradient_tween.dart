import 'package:flutter/material.dart';

class GradientTween extends Tween<Gradient> {
  GradientTween({
    required Gradient begin,
    required Gradient end,
  }) : super(begin: begin, end: end);

  @override
  Gradient lerp(double t) => Gradient.lerp(begin, end, t)!;
}
