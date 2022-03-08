import 'package:flutter/widgets.dart';

class AnimatedBackground extends StatefulWidget {
  final Widget child;

  const AnimatedBackground({
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  State<AnimatedBackground> createState() => _AnimatedBackgroundState();
}

class _AnimatedBackgroundState extends State<AnimatedBackground>
    with TickerProviderStateMixin {
  late final AnimationController _longerController;
  late final AnimationController _shorterController;
  late final Animation<double> _rightGradientAnimation;
  late final Animation<double> _bottomGradientAnimation;
  late final Animation<double> _rightMovementAnimation;
  late final Animation<double> _bottomMovementAnimation;

  @override
  void initState() {
    super.initState();

    _longerController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 8),
    )
      ..repeat(reverse: true)
      ..addListener(() {
        setState(() {});
      });
    _shorterController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    )..repeat(reverse: true);
    _rightGradientAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_longerController);
    _bottomGradientAnimation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(_shorterController);
    _rightMovementAnimation = Tween<double>(
      begin: -1,
      end: 1,
    ).animate(_longerController);
    _bottomMovementAnimation = Tween<double>(
      begin: -1,
      end: 1,
    ).animate(_shorterController);
  }

  @override
  void dispose() {
    _longerController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _Gradient(
      center: Alignment(2, _rightMovementAnimation.value),
      animation: _rightGradientAnimation,
      child: _Gradient(
        center: Alignment(_bottomMovementAnimation.value, 2),
        animation: _bottomGradientAnimation,
        child: widget.child,
      ),
    );
  }
}

class _Gradient extends StatelessWidget {
  final Alignment center;
  final Animation<double> animation;
  final Widget child;

  const _Gradient({
    required this.center,
    required this.animation,
    required this.child,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        gradient: RadialGradient(
          center: center,
          radius: 3,
          stops: [
            0 / 3 - animation.value,
            1.25 / 3 - animation.value,
            1.75 / 3 - animation.value,
            3 / 3 - animation.value,
            4.25 / 3 - animation.value,
            4.75 / 3 - animation.value,
            6 / 3 - animation.value,
          ],
          colors: const [
            Color.fromRGBO(255, 231, 231, 0.1),
            Color.fromRGBO(99, 237, 187, 0.1),
            Color.fromRGBO(199, 244, 94, 0.2),
            Color.fromRGBO(255, 231, 231, 0.1),
            Color.fromRGBO(99, 237, 187, 0.1),
            Color.fromRGBO(199, 244, 94, 0.2),
            Color.fromRGBO(255, 231, 231, 0.1),
          ],
        ),
      ),
      child: child,
    );
  }
}
