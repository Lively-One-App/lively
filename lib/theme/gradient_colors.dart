import 'package:flutter/material.dart';

@immutable
class GradientColors extends ThemeExtension<GradientColors> {
  const GradientColors({
    required this.backgroundLivelyButtonStart,
    required this.backgroundLivelyButtonEnd,
    required this.backgroundStart,
    required this.backgroundEnd,
  });
  final Gradient? backgroundLivelyButtonStart;
  final Gradient? backgroundLivelyButtonEnd;
  final Gradient? backgroundStart;
  final Gradient? backgroundEnd;
  @override
  GradientColors copyWith({Gradient? backgroundLivelyButtonStart}) {
    return GradientColors(
      backgroundLivelyButtonStart:
          backgroundLivelyButtonStart ?? this.backgroundLivelyButtonStart,
      backgroundLivelyButtonEnd:
          backgroundLivelyButtonEnd ?? this.backgroundLivelyButtonEnd,
      backgroundStart: backgroundStart ?? this.backgroundStart,
      backgroundEnd: backgroundEnd ?? this.backgroundEnd,
    );
  }

  @override
  GradientColors lerp(ThemeExtension<GradientColors>? other, double t) {
    if (other is! GradientColors) {
      return this;
    }
    return GradientColors(
      backgroundLivelyButtonStart: Gradient.lerp(
          backgroundLivelyButtonStart, other.backgroundLivelyButtonStart, t),
      backgroundLivelyButtonEnd: Gradient.lerp(
          backgroundLivelyButtonEnd, other.backgroundLivelyButtonEnd, t),
      backgroundStart: Gradient.lerp(backgroundStart, other.backgroundStart, t),
      backgroundEnd: Gradient.lerp(backgroundEnd, other.backgroundEnd, t),
    );
  }
}
