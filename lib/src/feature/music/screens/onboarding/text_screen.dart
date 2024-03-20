import 'package:flutter/material.dart';
import '../../../../widgets/animated_background.dart';

class TextScreen extends StatelessWidget {
  const TextScreen(
      {Key? key,
      required this.firstPart,
      required this.secondPart,
      required this.gradientColors})
      : super(key: key);
  final String firstPart;
  final String secondPart;
  final List<Color> gradientColors;

  @override
  Widget build(BuildContext context) {
    late final backGround = Opacity(
        opacity: 0.6,
        child: AnimatedBackground(
          animationDuration: const Duration(seconds: 2),
          beginGradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            stops: const [0, 0.6, 1],
            colors: gradientColors,
          ),
          endGradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: const [0, 0.6, 1],
              colors: gradientColors.reversed.toList()),
        ));

    return Scaffold(
      backgroundColor: const Color(0xFF363636),
      body: Stack(
        alignment: Alignment.center,
        children: [
          backGround,
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38),
            child: Text.rich(
              TextSpan(children: [
                TextSpan(
                    text: firstPart,
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, height: 1.18)),
                TextSpan(
                  text: secondPart,
                  style: const TextStyle(
                    fontFamily: 'MullerMedium',
                  ),
                )
              ]),
              style: const TextStyle(
                  color: Colors.white, fontSize: 39, height: 1.18),
            ),
          )
        ],
      ),
    );
  }
}
