import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../../theme/burger_text.dart';
import '../../../../theme/gradient_colors.dart';
import '../../../widgets/animated_background.dart';
import '../../../widgets/gradient_button.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Localizations = S.of(context);
    final theme = Theme.of(context);
    final textTheme = Theme.of(context).extension<BurgerText>()!.textTheme;
    final gradientTheme = Theme.of(context).extension<GradientColors>()!;

    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          AnimatedBackground(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  Localizations.noInternet,
                  textAlign: TextAlign.center,
                  style: textTheme.subtitle1
                      ?.copyWith(fontSize: 30, fontWeight: FontWeight.w800),
                ),
                const SizedBox(height: 30),
                Text(
                  Localizations.noInternetReconnect,
                  textAlign: TextAlign.center,
                  style: textTheme.subtitle1?.copyWith(fontSize: 24),
                ),
                const SizedBox(height: 52),
                GradientButton(
                  onPressed: () {},
                  background: theme.scaffoldBackgroundColor,
                  gradient: gradientTheme.backgroundLivelyButtonStart
                      as LinearGradient,
                  borderRadius: 34,
                  stroukeWidth: 3,
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 20, horizontal: 41),
                    child: Text(
                      Localizations.noInternetCheck,
                      style: textTheme.headline1?.copyWith(fontSize: 22),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
