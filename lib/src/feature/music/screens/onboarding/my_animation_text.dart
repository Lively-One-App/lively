import 'package:flutter/material.dart';

class TextFadeTransition extends StatefulWidget {
  const TextFadeTransition({Key? key}) : super(key: key);

  @override
  State<TextFadeTransition> createState() => _TextFadeTransitionState();
}

class _TextFadeTransitionState extends State<TextFadeTransition>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  initState() {
    super.initState();
    _controller = AnimationController(
        duration: const Duration(milliseconds: 1000), vsync: this, value: 0);
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);

    _controller.forward();
  }

  @override
  dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: _animation,
      child: const Center(
        child: Text(
          'Test',
          style: const TextStyle(
            fontSize: 50,
          ),
        ),
      ),
    );
  }
}
