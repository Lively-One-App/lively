import 'package:flutter/material.dart';

import '../../../../theme/colors_for_gradient.dart';
import '../../../widgets/animated_background.dart';

class HomeTest extends StatelessWidget {
  const HomeTest({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    late final gradientColors =
        Theme.of(context).extension<ColorsForGradient>()!;

    return Scaffold(
      body: Column(
        children: [
          AnimatedBackground(
            beginGradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [
                gradientColors.bgColor1!,
                gradientColors.bgColor2!,
                gradientColors.bgColor3!,
              ],
            ),
            endGradient: LinearGradient(
                begin: Alignment.bottomLeft,
                end: Alignment.topRight,
                colors: [
                  gradientColors.bgColor3!,
                  gradientColors.bgColor2!,
                  gradientColors.bgColor1!,
                ]),
            height: 500,
            child: Column(
              children: [
                Expanded(child: Text('ngjnjjknjjfdkjkljkvlfsjljfkldk'))
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: Colors.red,
          )
        ],
      ),
    );
  }
}
