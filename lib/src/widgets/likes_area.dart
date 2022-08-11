import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../feature/music/bloc/likes/likes_bloc.dart';
import 'heart_button.dart';
import 'reset_animated_icon.dart';

class LikesArea extends StatelessWidget {
  final AnimationController controllerResetIcon;
  final AnimationController controllerHeart;
  final AnimationController controllerTextHeart;
  final ValueNotifier<bool> isLike;
  final void Function()? onDoubleTap;
  const LikesArea({
    Key? key,
    required this.controllerResetIcon,
    required this.controllerHeart,
    required this.isLike,
    required this.controllerTextHeart,
    this.onDoubleTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final height = MediaQuery.of(context).size.height;
    final aspectRatio = MediaQuery.of(context).size.aspectRatio;

    late final Animation<double> movementResetIcon =
        Tween(begin: 0.0, end: aspectRatio > 0.5 ? -65.0 : -70.0).animate(
            CurvedAnimation(
                parent: controllerResetIcon, curve: Curves.easeInOutBack));
    late final Animation<double> movementTextHeart =
        Tween(begin: 0.0, end: -2.0).animate(CurvedAnimation(
            parent: controllerTextHeart, curve: Curves.easeInOutBack));
    late final Animation<double> opacityTextHeart =
        Tween(begin: 1.0, end: 0.25).animate(controllerTextHeart);
    late final increaseHeart = Tween(
            begin: aspectRatio > 0.5 ? 72.0 : 80.0,
            end: aspectRatio > 0.5 ? 87.0 : 97.0)
        .animate(CurvedAnimation(
            parent: controllerHeart, curve: Curves.easeOutBack));
    void resetAnimation() {
      controllerTextHeart
          .forward()
          .whenComplete(() => controllerTextHeart.reverse());
      controllerResetIcon
          .forward()
          .whenComplete(() => controllerResetIcon.reverse());
    }

    return BlocBuilder<LikesBloc, LikesState>(
      builder: (context, state) {
        return state.when(initial: () {
          return const Expanded(
            child: SizedBox(),
          );
        }, getLikes: (cityData) {
          resetAnimation();

          return Expanded(
            child: ValueListenableBuilder<bool>(
              valueListenable: isLike,
              builder: (context, value, _) => TweenAnimationBuilder<double>(
                tween: Tween(begin: 0, end: 1),
                duration: const Duration(milliseconds: 130),
                builder: (context, opacity, child) => Opacity(
                  opacity: opacity,
                  child: GestureDetector(
                    onDoubleTap: value ? null : onDoubleTap,
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      color: Colors.transparent,
                      margin: const EdgeInsets.only(top: 15),
                      // padding: EdgeInsets.only(top: height * 0.04),
                      child: Stack(
                          alignment: AlignmentDirectional.topCenter,
                          children: [
                            !value
                                ? Padding(
                                    padding: EdgeInsets.only(
                                        top: aspectRatio > 0.5 ? 131 : 161),
                                    child: ResetAnimatedIcon(
                                      countLikes: cityData.likes,
                                      resetAnimation: resetAnimation,
                                      controller: controllerResetIcon,
                                      animation: movementResetIcon,
                                    ),
                                  )
                                : const SizedBox(),
                            Center(
                              child: HeartButton(
                                child: AnimatedBuilder(
                                    animation: movementTextHeart,
                                    child: Text(
                                        !value ? '+${cityData.likes}' : '',
                                        style: textTheme.caption),
                                    builder: (context, child) {
                                      return Transform.translate(
                                        offset:
                                            Offset(movementTextHeart.value, 0),
                                        child: Opacity(
                                          opacity: opacityTextHeart.value,
                                          child: child,
                                        ),
                                      );
                                    }),
                                increaseHeart: increaseHeart,
                                controllerHeart: controllerHeart,
                                textTheme: textTheme,
                              ),
                            ),
                          ]),
                    ),
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
