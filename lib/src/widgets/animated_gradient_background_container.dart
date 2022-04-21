import 'package:flutter/widgets.dart';

class AnimatedGradientBackgroundContainer extends StatefulWidget {
  const AnimatedGradientBackgroundContainer({Key? key}) : super(key: key);

  @override
  State<AnimatedGradientBackgroundContainer> createState() =>
      _AnimatedGradientBackgroundContainerState();
}

class _AnimatedGradientBackgroundContainerState
    extends State<AnimatedGradientBackgroundContainer>
    with SingleTickerProviderStateMixin {
  static const double _opacity = 0.16;

  static final Color _yellow = Color(0xFFCCF45A).withOpacity(_opacity);
  static final Color _blue = Color(0xFF4DEBCE).withOpacity(_opacity);
  static final Color _pink = Color(0xFFFFA0B7).withOpacity(_opacity);

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
                _yellow,
                Color.lerp(
                  _blue,
                  _pink,
                  centerTween.animate(_controller).value,
                )!,
                Color.lerp(
                  _blue,
                  _pink,
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
