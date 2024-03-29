import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lively/src/feature/music/bloc/sync_server/sync_server_cubit.dart';

import '../../generated/l10n.dart';
import '../../lively_icons.dart';

class ResetAnimatedIcon extends StatefulWidget {
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
  State<ResetAnimatedIcon> createState() => _ResetAnimatedIconState();
}

class _ResetAnimatedIconState extends State<ResetAnimatedIcon> {
  @override
  void dispose() {
    widget.controller.reverse();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final aspectRatio = MediaQuery.of(context).size.aspectRatio;

    return BlocSelector<SyncServerCubit, int, int>(
        selector: (state) => state,
        builder: (context, state) {
          final timerValue = state == 9 ? 0 : state;
          if (timerValue == 8) widget.controller.reverse();
          if (timerValue == 0) widget.controller.forward();

          return AnimatedBuilder(
              animation: widget.controller,
              builder: (context, child) {
                return Transform.translate(
                    offset: Offset(0, widget.animation.value),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            LivelyIcons.reset,
                            size: aspectRatio > 0.5 ? 17 : 19,
                            color:
                                Theme.of(context).appBarTheme.iconTheme?.color,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            '$timerValue '
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
