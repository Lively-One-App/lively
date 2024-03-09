import 'package:flutter/material.dart';

import 'package:introduction_screen/introduction_screen.dart';

import '../../../../../generated/l10n.dart';
import '../../../../../theme/colors_for_gradient.dart';
import 'video_screen.dart';
import 'text_screen.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final theme = Theme.of(context);
    final localizations = S.of(context);
    final colorsForGradient = theme.extension<ColorsForGradient>()!;
    final gradientColors = [
      colorsForGradient.btnColor1!,
      colorsForGradient.btnColor2!,
      colorsForGradient.btnColor3!,
    ];

    return IntroductionScreen(
      globalBackgroundColor: theme.scaffoldBackgroundColor,
      rawPages: [
        TextScreen(
          gradientColors: gradientColors,
          firstPart: localizations.onBoardingScreen1_1,
          secondPart: localizations.onBoardingScreen1_2,
        ),
        TextScreen(
            firstPart: localizations.onBoardingScreen2_1,
            secondPart: localizations.onBoardingScreen2_2,
            gradientColors: gradientColors),
        TextScreen(
          gradientColors: gradientColors,
          firstPart: localizations.onBoardingScreen3_1,
          secondPart: localizations.onBoardingScreen3_2,
        ),
        VideoScreen(
          textButton: Padding(
            padding: const EdgeInsets.only(top: 6, right: 0),
            child: Text(
              localizations.start,
              style: theme.textTheme.displayLarge
                  ?.copyWith(fontSize: 22, letterSpacing: 0),
            ),
          ),
          gradientColorsButton: gradientColors,
          bgButton: theme.scaffoldBackgroundColor.withOpacity(0.8),
          scaleFactorVideo:
              size.height > 768 ? size.height / 768 : 768 / size.height,
          bottomPaddingButton: size.height * 0.1,
        ),
      ],
      showNextButton: false,
      showDoneButton: false,
      // onChange: (pages) {
      //   if (pages == 3) {
      //     Navigator.of(context).pop();
      //   }
      // },
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      skip: const Text('Skip'),
      // done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: const DotsDecorator(
        size: Size(10.0, 10.0),
        activeColor: Colors.white,
        color: Colors.white,
        activeSize: Size(22.0, 10.0),
        activeShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25.0)),
        ),
      ),
    );
  }
}
