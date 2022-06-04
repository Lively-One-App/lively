import 'package:flutter/material.dart';

@immutable
class CustomGradientColors extends ThemeExtension<CustomGradientColors> {
  const CustomGradientColors({
    required this.bgButtonColor1,
    required this.bgButtonColor2,
    required this.bgButtonColor3,
    required this.bgColor1,
    required this.bgColor2,
    required this.bgColor3,
  });
  final Color bgButtonColor1;
  final Color bgButtonColor2;
  final Color bgButtonColor3;
  final Color bgColor1;
  final Color bgColor2;
  final Color bgColor3;
  @override
  CustomGradientColors copyWith({
    Color? bgButtonColor1,
    Color? bgButtonColor2,
    Color? bgButtonColor3,
    Color? bgColor1,
    Color? bgColor2,
    Color? bgColor3,
  }) {
    return CustomGradientColors(
      bgButtonColor1: bgButtonColor1 ?? this.bgButtonColor1,
      bgButtonColor2: bgButtonColor2 ?? this.bgButtonColor2,
      bgButtonColor3: bgButtonColor3 ?? this.bgButtonColor3,
      bgColor1: bgButtonColor1 ?? this.bgColor1,
      bgColor2: bgButtonColor2 ?? this.bgColor2,
      bgColor3: bgButtonColor3 ?? this.bgColor3,
    );
  }

  // Controls how the properties change on theme changes
  @override
  CustomGradientColors lerp(
      ThemeExtension<CustomGradientColors>? other, double t) {
    if (other is! CustomGradientColors) {
      return this;
    }
    return CustomGradientColors(
      bgButtonColor1: Color.lerp(bgButtonColor1, other.bgButtonColor1, t)!,
      bgButtonColor2: Color.lerp(bgButtonColor2, other.bgButtonColor2, t)!,
      bgButtonColor3: Color.lerp(bgButtonColor3, other.bgButtonColor3, t)!,
      bgColor1: Color.lerp(bgColor1, other.bgColor1, t)!,
      bgColor2: Color.lerp(bgColor2, other.bgColor2, t)!,
      bgColor3: Color.lerp(bgColor3, other.bgColor3, t)!,
    );
  }
}
