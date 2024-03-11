import 'dart:async';

import 'package:flutter/material.dart';
import 'package:lively/generated/l10n.dart';

class AnimatedChecking extends StatefulWidget {
  const AnimatedChecking({Key? key}) : super(key: key);

  @override
  State<AnimatedChecking> createState() => _AnimatedCheckingState();
}

class _AnimatedCheckingState extends State<AnimatedChecking>
    with SingleTickerProviderStateMixin {
  int _dotIndex = 0;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(milliseconds: 350), (Timer timer) {
      setState(() {
        _dotIndex = (_dotIndex + 1) % 4; // Cycle through 0 to 3
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme; // Use appropriate text theme

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Text(
          S.of(context).noInternetCheck, // Your text goes here
          style: textTheme.displayLarge?.copyWith(fontSize: 22),
        ),
        ...List.generate(3, (index) {
          return AnimatedOpacity(
            opacity: _dotIndex > index ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 350),
            child: Text(
              '.',
              style: textTheme.displayLarge?.copyWith(fontSize: 22),
            ),
          );
        }),
      ],
    );
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
}
