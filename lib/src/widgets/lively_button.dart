import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../theme.dart';
import '../feature/music/bloc/radio/music_cubit.dart';
import 'lively_icon.dart';
import 'circle_icon_button.dart';

class LivelyButton extends StatefulWidget {
  const LivelyButton({Key? key, required this.radius, this.onTap})
      : super(key: key);
  final double radius;
  final void Function()? onTap;

  @override
  State<LivelyButton> createState() => _LivelyButtonState();
}

class _LivelyButtonState extends State<LivelyButton>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final iconTheme = Theme.of(context).iconTheme;
    return BlocBuilder<MusicCubit, MusicState>(
      builder: (context, state) {
        return CustomPaint(
            painter: state.whenOrNull(
              initial: () => _LivelyButtonPainter(
                  backgroundColor: MyThemes.backgroundColor),
              beforePlaying: () => _LivelyButtonPainter(
                  backgroundGradient: LinearGradient(
                colors: [
                  MyThemes.pinkBackground,
                  MyThemes.blueBackground,
                  MyThemes.yellowBackground,
                ],
                stops: [0, 0.42, 1],
              )),
              beforeStopping: () => _LivelyButtonPainter(
                  backgroundGradient: LinearGradient(
                colors: [
                  MyThemes.pinkBackground,
                  MyThemes.blueBackground,
                  MyThemes.yellowBackground,
                ],
                stops: [0, 0.42, 1],
              )),
              loaded: (_) => _LivelyButtonPainter(
                  backgroundColor: MyThemes.backgroundColor),
            ),
            child: CircleIconButton(
                onTap: widget.onTap,
                radius: widget.radius,
                child: state.whenOrNull(
                    initial: () => Text(
                          'Lively',
                          style: textTheme.caption
                              ?.copyWith(color: iconTheme.color),
                        ),
                    beforePlaying: () => Text(
                          'Lively',
                          style: textTheme.caption,
                        ),
                    loaded: (_) =>  LivelyIcon(
                            size: Size(widget.radius, widget.radius * 0.4),
                          ),
                    beforeStopping: () =>  LivelyIcon(
                            size: Size(widget.radius, widget.radius * 0.4),
                          ),
                        )));
      },
    );
  }
}

class _LivelyButtonPainter extends CustomPainter {
  const _LivelyButtonPainter({
    this.backgroundColor,
    this.backgroundGradient,
  });
  final Color? backgroundColor;
  final Gradient? backgroundGradient;
  @override
  void paint(Canvas canvas, Size size) {
    final paintFrame = Paint()
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.butt
      ..shader = LinearGradient(
        colors: [
          MyThemes.pinkBackground,
          MyThemes.blueBackground,
          MyThemes.yellowBackground,
        ],
        stops: [0, 0.42, 1],
      ).createShader(
          Rect.fromLTWH((-623 + size.width) / 2, 0, 623, size.width));

    final paintBackground = Paint()
      ..style = PaintingStyle.fill
      ..strokeWidth = 0;
    if (backgroundGradient != null) {
      paintBackground
        ..shader = backgroundGradient!.createShader(
            Rect.fromLTWH((-623 + size.width) / 2, 0, 623, size.width));
    } else if (backgroundColor != null) {
      paintBackground..color = backgroundColor!;
    }

    final paintShadow = Paint()
      ..maskFilter = MaskFilter.blur(BlurStyle.normal, 9)
      // ..maskFilter = MaskFilter.blur(BlurStyle.solid, 0)
      ..color = Color(0xFF474747).withOpacity(0.59)
      ..strokeWidth = 3
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.butt;

    final pathFrame = Path()
      ..addArc(
        Rect.fromCenter(
          center: Offset(size.height / 2, size.width / 2),
          height: size.height,
          width: size.width,
        ),
        math.pi + 0.13,
        math.pi - 0.26,
      )
      ..addArc(
        Rect.fromCenter(
          center: Offset(size.height / 2, size.width / 2),
          height: size.height,
          width: size.width,
        ),
        math.pi - 0.13,
        -math.pi + 0.26,
      )
      ..addArc(
        Rect.fromCenter(
          center: Offset(0, size.width / 2),
          height: 32,
          width: 623 - size.width,
        ),
        math.pi / 2,
        math.pi,
      )
      ..addArc(
        Rect.fromCenter(
          center: Offset(size.width, size.width / 2),
          height: 32,
          width: 623 - size.width,
        ),
        -math.pi / 2,
        math.pi,
      );

    final pathBackground = Path()
      ..addOval(Rect.fromCenter(
        center: Offset(size.height / 2, size.width / 2),
        height: size.height - 3,
        width: size.width - 3,
      ))
      ..addArc(
        Rect.fromCenter(
          center: Offset(3, size.width / 2),
          height: 29,
          width: 623 - size.width,
        ),
        math.pi / 2,
        math.pi,
      )
      ..addArc(
        Rect.fromCenter(
          center: Offset(size.width - 3, size.width / 2),
          height: 29,
          width: 623 - size.width,
        ),
        -math.pi / 2,
        math.pi,
      );

    canvas..drawPath(pathBackground, paintBackground);

    canvas..drawPath(pathFrame, paintShadow);
    canvas..drawPath(pathFrame, paintFrame);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
