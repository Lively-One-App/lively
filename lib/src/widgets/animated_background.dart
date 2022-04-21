import 'package:flutter/widgets.dart';

import '../../theme.dart';

class AnimatedBackground extends StatefulWidget {
  const AnimatedBackground({Key? key}) : super(key: key);

  @override
  State<AnimatedBackground> createState() => _AnimatedBackgroundState();
}

class _AnimatedBackgroundState extends State<AnimatedBackground>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 750),
    )..repeat(reverse: true);
  }

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
        final double opacity = 0.16;
        final centerTween = Tween<double>(
          begin: 0,
          end: 1,
        );
        final endTween = Tween<double>(
          begin: 1,
          end: 0,
        );

        return DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                MyThemes.yellowBackground.withOpacity(opacity),
                Color.lerp(
                  MyThemes.blueBackground.withOpacity(opacity),
                  MyThemes.pinkBackground.withOpacity(opacity),
                  centerTween.animate(_controller).value,
                )!,
                Color.lerp(
                  MyThemes.blueBackground.withOpacity(opacity),
                  MyThemes.pinkBackground.withOpacity(opacity),
                  endTween.animate(_controller).value,
                )!,
              ],
            ),
          ),
        );
      },
    );
  }
}
