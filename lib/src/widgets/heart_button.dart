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
    required this.text,
    this.onTap,
    this.onTapCancel,
  }) : super(key: key);

  final TextTheme textTheme;
  final Animation<double> increaseHeart;
  final AnimationController controllerHeart;
  final void Function()? onTap;
  final Text text;
  final void Function()? onTapCancel;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: controllerHeart,
        builder: (context, child) => CircleIconButton(
              child: Stack(
                alignment: AlignmentDirectional.center,
                children: [
                  InnerShadow(
                    shadows: const [
                      Shadow(blurRadius: 6, color: Colors.black38)
                    ],
                    child: Icon(
                      LivelyIcons.heart,
                      size: increaseHeart.value,
                    ),
                  ),
                  text
                ],
              ),
              onTap: onTap,
              onTapCancel: onTapCancel,
            ));
  }
}
