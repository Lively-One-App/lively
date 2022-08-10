import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../generated/l10n.dart';
import '../../lively_icons.dart';
import '../feature/music/bloc/sync_server/sync_server.dart';

class ResetAnimatedIcon extends StatelessWidget {
  const ResetAnimatedIcon(
      {Key? key,
      required this.resetAnimation,
      required this.animation,
      required this.controller,
      required this.countLikes})
      : super(key: key);
  final Animation<double> animation;
  final AnimationController controller;
  final void Function() resetAnimation;
  final int countLikes;
  @override
  Widget build(BuildContext context) {
    final aspectRatio = MediaQuery.of(context).size.aspectRatio;

    return BlocSelector<SyncServerCubit, int, int>(
        selector: (state) => (state / 10).round(),
        builder: (context, state) {
          if (state == 8 && countLikes == 0) resetAnimation();

          return AnimatedBuilder(
              animation: controller,
              builder: (context, child) {
                return Transform.translate(
                    offset: Offset(0, animation.value),
                    child: Column(children: [
                      Icon(
                        LivelyIcons.reset,
                        size: aspectRatio > 0.5 ? 17 : 19,
                        color: Theme.of(context).appBarTheme.iconTheme?.color,
                      ),
                      const SizedBox(height: 5),
                      Text(
                        '${state} '
                        '${S.of(context).resetTime}',
                        style: TextStyle(
                            fontSize: aspectRatio > 0.5 ? 10 : 12,
                            fontWeight: FontWeight.bold),
                      )
                    ]));
              });
        });
  }
}
