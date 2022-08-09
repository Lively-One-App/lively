import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../generated/l10n.dart';
import '../../lively_icons.dart';
import '../feature/music/bloc/sync_server/sync_server.dart';

class ResetAnimatedIcon extends StatelessWidget {
  const ResetAnimatedIcon({
    Key? key,
    this.resetAnimation,
    required this.animation,
    required this.controller,
  }) : super(key: key);
  final Animation<double> animation;
  final AnimationController controller;
  final void Function()? resetAnimation;
  @override
  Widget build(BuildContext context) {
    return BlocSelector<SyncServerCubit, int, int>(
        selector: (state) => (state / 10).round(),
        builder: (context, state) {
          if (state == 8) resetAnimation!();

          return AnimatedBuilder(
              animation: controller,
              builder: (context, child) {
                return Transform.translate(
                    offset: Offset(0, animation.value),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            LivelyIcons.reset,
                            size: 19,
                            color:
                                Theme.of(context).appBarTheme.iconTheme?.color,
                          ),
                          const SizedBox(height: 5),
                          Text(
                            '${state} '
                            '${S.of(context).resetTime}',
                            style: const TextStyle(fontSize: 12),
                          )
                        ]));
              });
        });
  }
}
