import 'package:flutter/material.dart';

import '../../theme/gradient_colors.dart';
import 'gradient_tween.dart';

class AnimatedBackground extends StatefulWidget {
  AnimatedBackground({Key? key, this.child}) : super(key: key);
  final Widget? child;

  @override
  State<AnimatedBackground> createState() => _AnimatedBackgroundState();
}

class _AnimatedBackgroundState extends State<AnimatedBackground>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 750),
  )..repeat(reverse: true);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final gradientTheme = Theme.of(context).extension<GradientColors>()!;
    late final animation = LinearGradientTween(
        begin: gradientTheme.backgroundStart as LinearGradient,
        end: gradientTheme.backgroundEnd as LinearGradient);
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Container(
          decoration: BoxDecoration(
            gradient: animation.animate(_controller).value,
          ),
        );
      },
    );
  }
}
