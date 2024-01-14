import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../feature/music/bloc/likes/likes_bloc.dart';
import 'heart_button.dart';
import 'reset_animated_icon.dart';

class LikesArea extends StatefulWidget {
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
  State<LikesArea> createState() => _LikesAreaState();
}

class _LikesAreaState extends State<LikesArea> {
  int likes = 0;
  StreamSubscription<int>? _timerSubForProcessingLikes;
  Future<void> startTimerForProcessingLikes() async {
    await _timerSubForProcessingLikes?.cancel();
    _timerSubForProcessingLikes =
        Stream.periodic(const Duration(seconds: 1), (i) => i).take(7).listen((i) {
      if (i == 6 && likes != 0) {
        BlocProvider.of<LikesBloc>(context)
            .add(const LikesEvent.processLikes());
      }
    });
  }

  @override
  void dispose() {
    _timerSubForProcessingLikes?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final aspectRatio = MediaQuery.of(context).size.aspectRatio;

    late final Animation<double> movementResetIcon =
        Tween(begin: (aspectRatio > 0.5 ? -65.0 : -80.0), end: 0.0).animate(
            CurvedAnimation(
                parent: widget.controllerResetIcon,
                curve: Curves.easeInOutBack));
    late final Animation<double> movementTextHeart =
        Tween(begin: 0.0, end: -2.0).animate(CurvedAnimation(
            parent: widget.controllerTextHeart, curve: Curves.easeInOutBack));
    late final Animation<double> opacityTextHeart =
        Tween(begin: 1.0, end: 0.25).animate(widget.controllerTextHeart);
    late final increaseHeart = Tween(
            begin: aspectRatio > 0.5 ? 72.0 : 80.0,
            end: aspectRatio > 0.5 ? 87.0 : 97.0)
        .animate(CurvedAnimation(
            parent: widget.controllerHeart, curve: Curves.easeOutBack));

    void resetAnimation() {
      widget.controllerTextHeart
          .forward()
          .whenComplete(() => widget.controllerTextHeart.reverse());
    }

    return BlocConsumer<LikesBloc, LikesState>(
      listener: (context, state) {
        state.whenOrNull(getLikes: (cityData)  {
          resetAnimation();
          if (cityData.likes != likes) {
            likes = cityData.likes;
            startTimerForProcessingLikes();
          }
        });
      },
      builder: (context, state) {
        return state.when(initial: () {
          return const Expanded(
            child: SizedBox(),
          );
        }, getLikes: (cityData) {
          return Expanded(
            child: ValueListenableBuilder<bool>(
              valueListenable: widget.isLike,
              builder: (context, value, _) => TweenAnimationBuilder<double>(
                tween: Tween(begin: 0, end: 1),
                duration: const Duration(milliseconds: 130),
                builder: (context, opacity, child) => Opacity(
                  opacity: opacity,
                  child: GestureDetector(
                    onDoubleTap: value ? null : widget.onDoubleTap!,
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
                                      controller: widget.controllerResetIcon,
                                      animation: movementResetIcon,
                                    ),
                                  )
                                : const SizedBox(),
                            Center(
                              child: HeartButton(
                                increaseHeart: increaseHeart,
                                controllerHeart: widget.controllerHeart,
                                textTheme: textTheme,
                                child: AnimatedBuilder(
                                  animation: movementTextHeart,
                                  builder: (context, child) {
                                    return Transform.translate(
                                      offset:
                                          Offset(movementTextHeart.value, 0),
                                      child: Opacity(
                                        opacity: opacityTextHeart.value,
                                        child: child,
                                      ),
                                    );
                                  },
                                  child: Text('+${cityData.likes}',
                                      style: textTheme.bodySmall),
                                ),
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
