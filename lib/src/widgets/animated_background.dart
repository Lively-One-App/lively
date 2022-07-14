import 'package:flutter/material.dart';

import 'gradient_tween.dart';

class AnimatedBackground extends StatefulWidget {
  const AnimatedBackground({
    Key? key,
    this.child,
    this.padding,
    this.borderRadius,
    required this.beginGradient,
    required this.endGradient,
    this.animationDuration = const Duration(milliseconds: 750),
  }) : super(key: key);
  final Widget? child;
  final Gradient beginGradient;
  final Gradient endGradient;
  final Duration animationDuration;
  final EdgeInsetsGeometry? padding;
  final BorderRadius? borderRadius;

  @override
  State<AnimatedBackground> createState() => _AnimatedBackgroundState();
}

class _AnimatedBackgroundState extends State<AnimatedBackground>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: widget.animationDuration,
  )..repeat(reverse: true);
  late final animation =
      GradientTween(begin: widget.beginGradient, end: widget.endGradient);
  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, _) {
        return Container(
          padding: widget.padding,
          decoration: BoxDecoration(
            borderRadius: widget.borderRadius,
            gradient: animation.animate(_controller).value,
          ),
          child: widget.child,
        );
      },
    );
  }
}
