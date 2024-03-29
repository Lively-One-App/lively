import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../feature/music/bloc/radio/radio_cubit.dart';
import 'gradient_tween.dart';
import 'lively_icon.dart';
import 'circle_icon_button.dart';

class LivelyButton extends StatelessWidget {
  const LivelyButton(
      {Key? key,
      required this.radius,
      this.onTap,
      required this.controllerLivelyButton,
      required this.beginGradient,
      required this.endGradient,
      required this.controllerLivelyIcon})
      : super(key: key);
  final double radius;
  final void Function()? onTap;
  final AnimationController controllerLivelyButton;
  final AnimationController controllerLivelyIcon;
  final Gradient beginGradient;
  final Gradient endGradient;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final backgroundTheme = Theme.of(context).scaffoldBackgroundColor;
    final width = MediaQuery.of(context).size.width;
    late final backgroundLivelyButton =
        GradientTween(begin: beginGradient, end: endGradient)
            .animate(controllerLivelyButton);
    late final rotateLivelyIcon =
        Tween(begin: 0.0, end: -0.21).animate(controllerLivelyIcon);

    return BlocBuilder<RadioCubit, RadioState>(
      builder: (context, state) {
        return Center(
          child: AnimatedBuilder(
            animation: controllerLivelyButton,
            builder: (context, _) => CustomPaint(
                painter: state.whenOrNull(
                  initial: () => _LivelyButtonPainter(
                      strokeGradient: beginGradient,
                      width: width,
                      backgroundColor: backgroundTheme),
                  beforePlaying: () => _LivelyButtonPainter(
                      strokeGradient: beginGradient,
                      width: width,
                      backgroundGradient: backgroundLivelyButton.value),
                  beforeStopping: () => _LivelyButtonPainter(
                      strokeGradient: beginGradient,
                      width: width,
                      backgroundGradient: backgroundLivelyButton.value),
                  loaded: () => _LivelyButtonPainter(
                      strokeGradient: beginGradient,
                      width: width,
                      backgroundColor: backgroundTheme),
                ),
                child: CircleIconButton(
                    onTap: onTap,
                    radius: radius,
                    child: state.whenOrNull(
                        initial: () => Padding(
                              padding: EdgeInsets.only(top: radius * 0.04),
                              child: Text(
                                'Lively',
                                style: textTheme.headline1?.copyWith(
                                  fontSize: 30,
                                  letterSpacing: 0,
                                ),
                              ),
                            ),
                        beforePlaying: () => Padding(
                              padding: EdgeInsets.only(top: radius * 0.04),
                              child: Text(
                                'Lively',
                                style: textTheme.headline1?.copyWith(
                                  fontSize: 30,
                                  color: Colors.white,
                                  letterSpacing: 0,
                                ),
                              ),
                            ),
                        loaded: () => Padding(
                              padding: EdgeInsets.only(top: radius * 0.04),
                              child: TweenAnimationBuilder<double>(
                                curve: Curves.easeOutBack,
                                duration: const Duration(milliseconds: 500),
                                tween: Tween(begin: radius / 7, end: 0),
                                builder: (context, value, child) =>
                                    Transform.translate(
                                  offset: Offset(value, 0),
                                  child: LivelyIcon(
                                    rotate: rotateLivelyIcon,
                                    controller: controllerLivelyIcon,
                                    size: Size(radius, radius * 0.4),
                                  ),
                                ),
                              ),
                            ),
                        beforeStopping: () {
                          return Padding(
                            padding: EdgeInsets.only(top: radius * 0.04),
                            child: LivelyIcon(
                              controller: controllerLivelyIcon,
                              rotate: rotateLivelyIcon,
                              size: Size(radius, radius * 0.4),
                            ),
                          );
                        }))),
          ),
        );
      },
    );
  }
}

class _LivelyButtonPainter extends CustomPainter {
  const _LivelyButtonPainter({
    required this.width,
    this.backgroundColor,
    this.backgroundGradient,
    required this.strokeGradient,
  });
  final Color? backgroundColor;
  final Gradient? backgroundGradient;
  final Gradient? strokeGradient;
  final double width;

  @override
  void paint(Canvas canvas, Size size) {
    final paintFrame = Paint()
      ..strokeWidth = 3
      ..shader = strokeGradient?.createShader(Rect.fromLTWH(
        (-width * 1.2 + size.width) / 2,
        0,
        width * 1.2,
        size.height,
      ))
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final paintBackground = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 0;
    if (backgroundGradient != null) {
      paintBackground
        ..shader = backgroundGradient?.createShader(Rect.fromLTWH(
          (-width * 1.2 + size.width) / 2,
          0,
          width * 1.2,
          size.height,
        ));
    } else if (backgroundColor != null) {
      paintBackground..color = backgroundColor!;
    }

    final paintShadow = Paint()
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 3)
      // ..maskFilter = MaskFilter.blur(BlurStyle.solid, 0)
      ..color = const Color(0xFF474747)
      ..strokeWidth = 1
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final pathFrame = Path()
      ..addArc(
        Rect.fromCenter(
          center: Offset(size.height / 2, size.width / 2),
          height: size.height - size.height * 0.1,
          width: size.width - size.width * 0.1,
        ),
        math.pi + math.pi / 23,
        math.pi - math.pi / 11,
      )
      ..addArc(
        Rect.fromCenter(
          center: Offset(size.height / 2, size.width / 2),
          height: size.height - size.height * 0.1,
          width: size.width - size.width * 0.1,
        ),
        math.pi - math.pi / 22,
        -math.pi + math.pi / 11,
      )
      ..addArc(
        Rect.fromCenter(
          center: Offset(size.width * 0.1 / 2, size.width / 2),
          height: size.height / 8,
          width: width * 1.3,
        ),
        math.pi / 2,
        math.pi,
      )
      ..addArc(
        Rect.fromCenter(
          center: Offset(size.width - size.width * 0.1 / 2, size.width / 2),
          height: size.height / 8,
          width: width * 1.3,
        ),
        -math.pi / 2,
        math.pi,
      );
    final pathShadow = Path()
      ..addArc(
        Rect.fromCenter(
          center: Offset(size.height / 2, size.width / 2),
          height: size.height - size.height * 0.1 - 4,
          width: size.width - size.width * 0.1 - 4,
        ),
        math.pi + math.pi / 26,
        math.pi - math.pi / 13,
      )
      ..addArc(
        Rect.fromCenter(
          center: Offset(size.height / 2, size.width / 2),
          height: size.height - size.height * 0.1 - 4,
          width: size.width - size.width * 0.1 - 4,
        ),
        math.pi - math.pi / 26,
        -math.pi + math.pi / 13,
      )
      ..addArc(
        Rect.fromCenter(
          center: Offset(size.width * 0.1 / 2, size.width / 2),
          height: size.height / 8 - 4,
          width: width * 1.3 - 4,
        ),
        math.pi / 2,
        math.pi,
      )
      ..addArc(
        Rect.fromCenter(
          center: Offset(size.width - size.width * 0.1 / 2, size.width / 2),
          height: size.height / 8 - 4,
          width: width * 1.3 - 4,
        ),
        -math.pi / 2,
        math.pi,
      );

    final pathBackground = Path()
      ..addOval(Rect.fromCenter(
        center: Offset(size.height / 2, size.width / 2),
        height: size.height - size.height * 0.1 - 3,
        width: size.width - size.width * 0.1 - 3,
      ))
      ..addArc(
        Rect.fromCenter(
          center: Offset(size.width * 0.1 / 2 + 3, size.width / 2),
          height: size.height / 8,
          width: width * 1.3,
        ),
        math.pi / 2,
        math.pi,
      )
      ..addArc(
        Rect.fromCenter(
          center: Offset(size.width - size.width * 0.1 / 2 - 3, size.width / 2),
          height: size.height / 8,
          width: width * 1.3,
        ),
        -math.pi / 2,
        math.pi,
      );

    canvas..drawPath(pathBackground, paintBackground);
    canvas..drawPath(pathShadow, paintShadow);
    canvas..drawPath(pathFrame, paintFrame);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}
