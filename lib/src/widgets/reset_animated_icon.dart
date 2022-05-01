import 'package:flutter/material.dart';

import '../../lively_icons.dart';
import 'circle_icon_button.dart';

class ResetAnimatedIcon extends StatelessWidget {
  const ResetAnimatedIcon({Key? key, required this.controller})
      : super(key: key);
  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    final Animation<double> movement =
        Tween(begin: 0.0, end: 90.0).animate(controller);
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, -movement.value),
          child: CircleIconButton(
            child: Column(
              children: [
                Icon(
                  LivelyIcons.reset,
                  color: Theme.of(context).appBarTheme.iconTheme?.color,
                ),
                Text('5 сек')
              ],
            ),
          ),
        );
      },
    );
  }
}
