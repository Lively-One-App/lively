import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../lively_icons.dart';
import '../feature/music/bloc/likes/likes_bloc.dart';
import 'circle_icon_button.dart';

class HeartButton extends StatelessWidget {
  const HeartButton(
      {Key? key,
      required this.textTheme,
      required this.countLikes,
      required this.controller})
      : super(key: key);

  final TextTheme textTheme;
  final int countLikes;
  final AnimationController controller;
  @override
  Widget build(BuildContext context) {
    final Animation<double> opacity =
        Tween(begin: 0.80, end: 1.0).animate(controller);
    return AnimatedBuilder(
      animation: controller,
      builder: (context, child) => CircleIconButton(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Icon(
              LivelyIcons.heart,
              size: 70,
            ),
            Opacity(
                opacity: opacity.value,
                child: Text('$countLikes', style: textTheme.caption)),
          ],
        ),
        onTap: () {
          BlocProvider.of<LikesBloc>(context).add(LikesEvent.putLikes());
        },
      ),
    );
  }
}
