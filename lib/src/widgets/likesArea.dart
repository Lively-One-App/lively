import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../feature/music/bloc/likes/likes_bloc.dart';
import 'heart_button.dart';
import 'reset_animated_icon.dart';

class LikesArea extends StatelessWidget {
  final AnimationController controllerResetIcon;
  final AnimationController controllerHeart;
  final ValueNotifier<bool> isLike;
  final void Function()? onDoubleTap;
  const LikesArea({
    Key? key,
    required this.controllerResetIcon,
    required this.controllerHeart,
    required this.isLike,
    this.onDoubleTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final height = MediaQuery.of(context).size.height;
    late final Animation<double> movementResetIcon =
        Tween(begin: 0.0, end: -height * 0.09).animate(CurvedAnimation(
            parent: controllerResetIcon, curve: Curves.easeInOutBack));
    late final increaseHeart = Tween(begin: 78.0, end: 95.0).animate(
        CurvedAnimation(parent: controllerHeart, curve: Curves.easeOutBack));

    return BlocBuilder<LikesBloc, LikesState>(
      builder: (context, state) {
        return state.when(initial: () {
          return const Expanded(
            child: SizedBox(),
          );
        }, getLikes: (cityData) {
          return ValueListenableBuilder<bool>(
            valueListenable: isLike,
            builder: (context, value, _) => TweenAnimationBuilder<double>(
              tween: Tween(begin: 0, end: 1),
              duration: const Duration(milliseconds: 130),
              builder: (context, opacity, child) => Opacity(
                opacity: opacity,
                child: GestureDetector(
                  onDoubleTap: value ? null : onDoubleTap,
                  child: Container(
                    color: Colors.transparent,
                    height: height * 0.395,
                    child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          !value
                              ? Padding(
                                  padding: EdgeInsets.only(top: height * 0.2),
                                  child: ResetAnimatedIcon(
                                    controller: controllerResetIcon,
                                    animation: movementResetIcon,
                                  ),
                                )
                              : const SizedBox(),
                          HeartButton(
                            text: Text(!value ? '+${cityData.likes}' : '',
                                style: textTheme.caption),
                            increaseHeart: increaseHeart,
                            controllerHeart: controllerHeart,
                            textTheme: textTheme,
                          ),
                        ]),
                  ),
                ),
              ),
            ),
          );
        });
      },
    );
  }
}
