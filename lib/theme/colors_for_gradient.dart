import 'package:flutter/material.dart';

@immutable
class ColorsForGradient extends ThemeExtension<ColorsForGradient> {
  const ColorsForGradient({
    required this.btnColor1,
    required this.btnColor2,
    required this.btnColor3,
    required this.bgColor1,
    required this.bgColor2,
    required this.bgColor3,
  });

  final Color? btnColor1;
  final Color? btnColor2;
  final Color? btnColor3;
  final Color? bgColor1;
  final Color? bgColor2;
  final Color? bgColor3;

  @override
  ColorsForGradient copyWith({
    Color? btnColor1,
    Color? btnColor2,
    Color? btnColor3,
    Color? bgColor1,
    Color? bgColor2,
    Color? bgColor3,
  }) {
    return ColorsForGradient(
      btnColor1: btnColor1 ?? this.btnColor1,
      btnColor2: btnColor2 ?? this.btnColor2,
      btnColor3: btnColor3 ?? this.btnColor3,
      bgColor1: bgColor1 ?? this.bgColor1,
      bgColor2: bgColor2 ?? this.bgColor2,
      bgColor3: bgColor3 ?? this.bgColor3,
    );
  }

  @override
  ColorsForGradient lerp(ThemeExtension<ColorsForGradient>? other, double t) {
    if (other is! ColorsForGradient) {
      return this;
    }

    return ColorsForGradient(
      btnColor1: Color.lerp(btnColor1, other.btnColor1, t),
      btnColor2: Color.lerp(btnColor2, other.btnColor2, t),
      btnColor3: Color.lerp(btnColor3, other.btnColor3, t),
      bgColor1: Color.lerp(bgColor1, other.bgColor1, t),
      bgColor2: Color.lerp(bgColor2, other.bgColor2, t),
      bgColor3: Color.lerp(bgColor3, other.bgColor3, t),
    );
  }
}
