import 'package:flutter/material.dart';

@immutable
class BurgerText extends ThemeExtension<BurgerText> {
  const BurgerText({required this.textTheme});
  final TextTheme textTheme;

  @override
  BurgerText copyWith({
    TextTheme? textTheme,
  }) {
    return BurgerText(
      textTheme: textTheme ?? this.textTheme,
    );
  }

  // Controls how the properties change on theme changes
  @override
  BurgerText lerp(ThemeExtension<BurgerText>? other, double t) {
    if (other is! BurgerText) {
      return this;
    }
    
    return BurgerText(
      textTheme: textTheme,
    );
  }
}
