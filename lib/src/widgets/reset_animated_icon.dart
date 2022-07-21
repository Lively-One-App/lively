import 'package:flutter/material.dart';

import '../../generated/l10n.dart';
import '../../lively_icons.dart';
import 'circle_icon_button.dart';

class ResetAnimatedIcon extends StatelessWidget {
  const ResetAnimatedIcon(
      {Key? key, required this.animation, required this.controller})
      : super(key: key);
  final Animation<double> animation;
  final AnimationController controller;
  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, animation.value),
          child: CircleIconButton(
            child: Column(
              children: [
                Icon(
                  LivelyIcons.reset,
                  size: 19,
                  color: Theme.of(context).appBarTheme.iconTheme?.color,
                ),
                const SizedBox(height: 5),
                Text(
                  S.of(context).resetTime,
                  style: const TextStyle(fontSize: 12),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
