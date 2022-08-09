import 'package:flutter/material.dart';

import '../../lively_icons.dart';
import 'circle_icon_button.dart';
import 'inner_shadow.dart';

class HeartButton extends StatelessWidget {
  const HeartButton({
    Key? key,
    required this.textTheme,
    required this.increaseHeart,
    required this.controllerHeart,
    required this.child,
    this.onTap,
    this.onTapCancel,
  }) : super(key: key);

  final TextTheme textTheme;
  final Animation<double> increaseHeart;
  final AnimationController controllerHeart;
  final void Function()? onTap;
  final Widget child;
  final void Function()? onTapCancel;

  @override
  Widget build(BuildContext context) {
    return controllerHeart.isDismissed
        ? CircleIconButton(
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: [
                InnerShadow(
                  shadows: const [Shadow(blurRadius: 6, color: Colors.black26)],
                  child: Icon(
                    LivelyIcons.heart,
                    size: increaseHeart.value,
                  ),
                ),
                child
              ],
            ),
            onTap: onTap,
            onTapCancel: onTapCancel,
          )
        : AnimatedBuilder(
            animation: controllerHeart,
            builder: (context, child) => Icon(
                  LivelyIcons.heart,
                  size: increaseHeart.value,
                  shadows: const [
                    BoxShadow(
                      blurRadius: 6,
                      color: Colors.black26,
                    )
                  ],
                ));
  }
}
