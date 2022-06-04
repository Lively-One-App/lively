import 'package:flutter/widgets.dart';

import '../../theme.dart';
import 'gradient_tween.dart';

class AnimatedBackground extends StatefulWidget {
  const AnimatedBackground({Key? key}) : super(key: key);

  @override
  State<AnimatedBackground> createState() => _AnimatedBackgroundState();
}

class _AnimatedBackgroundState extends State<AnimatedBackground>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 750),
  )..repeat(reverse: true);
  late final animation = LinearGradientTween(
      begin: MyThemes.backGroundGradientBegin,
      end: MyThemes.backGroundGradientEnd);

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return DecoratedBox(
          decoration:
              BoxDecoration(gradient: animation.animate(_controller).value),
        );
      },
    );
  }
}
