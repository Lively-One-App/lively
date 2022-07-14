import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../feature/music/bloc/radio/radio_cubit.dart';
import 'gradient_tween.dart';
import 'lively_icon.dart';
import 'circle_icon_button.dart';

class LivelyButton extends StatelessWidget {
  LivelyButton({
    Key? key,
    required this.radius,
    this.onTap,
    required this.controller,
    required this.beginGradient,
    required this.endGradient,
  }) : super(key: key);
  final double radius;
  final void Function()? onTap;
  final AnimationController controller;
  final Gradient beginGradient;
  final Gradient endGradient;

  late final animation =
      GradientTween(begin: beginGradient, end: endGradient).animate(controller);
  late final rotateLivelyIcon =
      Tween(begin: 0.0, end: -0.21).animate(controller);

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final backgroundTheme = Theme.of(context).scaffoldBackgroundColor;
    final width = MediaQuery.of(context).size.width;

    return BlocBuilder<RadioCubit, RadioState>(
      builder: (context, state) {
        return Center(
          child: AnimatedBuilder(
            animation: controller,
            builder: (context, _) => CustomPaint(
                painter: state.whenOrNull(
                  initial: () {
                    return _LivelyButtonPainter(
                        strokeGradient: beginGradient,
                        width: width,
                        backgroundColor: backgroundTheme);
                  },
                  beforePlaying: () {
                    return _LivelyButtonPainter(
                        strokeGradient: beginGradient,
                        width: width,
                        backgroundGradient: animation.value);
                  },
                  beforeStopping: () {
                    return _LivelyButtonPainter(
                        strokeGradient: beginGradient,
                        width: width,
                        backgroundGradient: animation.value);
                  },
                  loaded: () {
                    return _LivelyButtonPainter(
                        strokeGradient: beginGradient,
                        width: width,
                        backgroundColor: backgroundTheme);
                  },
                ),
                child: CircleIconButton(
                    onTap: onTap,
                    radius: radius,
                    child: state.whenOrNull(
                        initial: () => Padding(
                              padding: EdgeInsets.only(top: radius * 0.04),
                              child: Text(
                                'Lively',
                                style:
                                    textTheme.headline1?.copyWith(fontSize: 30),
                              ),
                            ),
                        beforePlaying: () => Padding(
                              padding: EdgeInsets.only(top: radius * 0.04),
                              child: Text(
                                'Lively',
                                style: textTheme.headline1?.copyWith(
                                    fontSize: 30, color: backgroundTheme),
                              ),
                            ),
                        loaded: () => Padding(
                              padding: EdgeInsets.only(top: radius * 0.04),
                              child: LivelyIcon(
                                rotate: rotateLivelyIcon,
                                controller: controller,
                                size: Size(radius, radius * 0.4),
                              ),
                            ),
                        beforeStopping: () => Padding(
                              padding: EdgeInsets.only(top: radius * 0.04),
                              child: LivelyIcon(
                                controller: controller,
                                rotate: rotateLivelyIcon,
                                size: Size(radius, radius * 0.4),
                              ),
                            )))),
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
      ..shader = strokeGradient!.createShader(Rect.fromLTWH(
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
        ..shader = backgroundGradient!.createShader(Rect.fromLTWH(
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
      ..color = const Color(0xFF474747).withOpacity(0.59)
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
          height: size.height - size.height * 0.1 - 7,
          width: size.width - size.width * 0.1 - 7,
        ),
        math.pi + math.pi / 23,
        math.pi - math.pi / 11,
      )
      ..addArc(
        Rect.fromCenter(
          center: Offset(size.height / 2, size.width / 2),
          height: size.height - size.height * 0.1 - 7,
          width: size.width - size.width * 0.1 - 7,
        ),
        math.pi - math.pi / 23,
        -math.pi + math.pi / 11,
      )
      ..addArc(
        Rect.fromCenter(
          center: Offset(size.width * 0.1 / 2, size.width / 2),
          height: size.height / 8 - 7,
          width: width * 1.3 - 7,
        ),
        math.pi / 2,
        math.pi,
      )
      ..addArc(
        Rect.fromCenter(
          center: Offset(size.width - size.width * 0.1 / 2, size.width / 2),
          height: size.height / 8 - 7,
          width: width * 1.3 - 7,
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
