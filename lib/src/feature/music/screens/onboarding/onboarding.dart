import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

import 'package:introduction_screen/introduction_screen.dart';

import '../../../../../generated/l10n.dart';
import '../../../../../theme/burger_text.dart';
import '../../../../../theme/colors_for_gradient.dart';
import '../../../../widgets/animated_background.dart';
import 'asset_video_player.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final localizations = S.of(context);
    final textTheme = theme.extension<BurgerText>()?.textTheme;

    return IntroductionScreen(
      globalBackgroundColor: theme.scaffoldBackgroundColor,
      rawPages: [
        TextScreen(
          firstPart: localizations.onBoardingScreen1_1,
          secondPart: localizations.onBoardingScreen1_2,
        ),
        TextScreen(
          firstPart: localizations.onBoardingScreen2_1,
          secondPart: localizations.onBoardingScreen2_2,
        ),
        const AssetVideoPlayer(),
        const SizedBox(),
      ],
      showNextButton: false,
      showDoneButton: false,
      onChange: (pages) {
        if (pages == 3) {
          Navigator.of(context).pushNamedAndRemoveUntil('/home', (_) => false);
        }
        ;
      },
      //onSkip: () => _onIntroEnd(context), // You can override onSkip callback
      showSkipButton: false,
      skip: const Text('Skip'),
      // done: const Text('Done', style: TextStyle(fontWeight: FontWeight.w600)),
      curve: Curves.fastLinearToSlowEaseIn,
      baseBtnStyle: TextButton.styleFrom(
          shadowColor: Colors.transparent,
          textStyle: textTheme?.subtitle2
              ?.copyWith(fontSize: 20, fontWeight: FontWeight.bold),
          enableFeedback: false,
          primary: theme.scaffoldBackgroundColor,
          padding: const EdgeInsets.only(bottom: 3)),
      controlsMargin: const EdgeInsets.all(16),
      controlsPadding: const EdgeInsets.fromLTRB(8.0, 4.0, 8.0, 4.0),
      dotsDecorator: DotsDecorator(
        size: const Size(10.0, 10.0),
        activeColor: theme.scaffoldBackgroundColor,
        color: theme.appBarTheme.iconTheme!.color!,
        activeSize: const Size(22.0, 10.0),
        activeShape: const RoundedRectangleBorder(
          borderRadius: const BorderRadius.all(const Radius.circular(25.0)),
        ),
      ),
    );
  }
}

class TextScreen extends StatelessWidget {
  const TextScreen(
      {Key? key, required this.firstPart, required this.secondPart})
      : super(key: key);
  final String firstPart;
  final String secondPart;

  @override
  Widget build(BuildContext context) {
    late final theme = Theme.of(context);
    late final gradientColors = theme.extension<ColorsForGradient>()!;
    late final textTheme = theme.extension<BurgerText>()?.textTheme;
    late final backGround = AnimatedBackground(
      animationDuration: const Duration(seconds: 2),
      beginGradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        stops: const [0, 0.6, 1],
        colors: [
          gradientColors.btnColor1!,
          gradientColors.btnColor2!,
          gradientColors.btnColor3!,
        ],
      ),
      endGradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          stops: const [
            0,
            0.6,
            1
          ],
          colors: [
            gradientColors.btnColor3!,
            gradientColors.btnColor2!,
            gradientColors.btnColor1!,
          ]),
    );
    final isSecondPart = ValueNotifier<bool>(false);

    return Stack(
      children: [
        backGround,
        DefaultTextStyle(
          style: textTheme!.subtitle2!
              .copyWith(fontSize: 39, color: theme.scaffoldBackgroundColor),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 38),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedTextKit(
                  pause: Duration.zero,
                  onFinished: () => isSecondPart.value = true,
                  isRepeatingAnimation: false,
                  animatedTexts: [
                    TypewriterAnimatedText(
                      firstPart,
                      speed: const Duration(milliseconds: 100),
                      textStyle: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                ValueListenableBuilder<bool>(
                  valueListenable: isSecondPart,
                  builder: ((context, value, child) => value
                      ? AnimatedTextKit(
                          isRepeatingAnimation: false,
                          animatedTexts: [
                            TypewriterAnimatedText(
                              secondPart,
                              speed: const Duration(milliseconds: 100),
                            ),
                          ],
                        )
                      : const SizedBox()),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
