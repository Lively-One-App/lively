import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lively/src/widgets/animated_checking.dart';

import '../../../../generated/l10n.dart';
import '../../../../theme/burger_text.dart';
import '../../../../theme/colors_for_gradient.dart';
import '../../../widgets/animated_background.dart';
import '../../../widgets/gradient_button.dart';
import '../bloc/radio/radio_cubit.dart';

class NoInternet extends StatelessWidget {
  const NoInternet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Localizations = S.of(context);
    final theme = Theme.of(context);
    final textTheme = Theme.of(context).extension<BurgerText>()!.textTheme;
    final gradientColors = Theme.of(context).extension<ColorsForGradient>()!;

    return Scaffold(
      body: BlocListener<RadioCubit, RadioState>(
        listener: (context, state) {
          state.whenOrNull(
            initial: () => Navigator.of(context).pop(),
          );
        },
        child: Stack(
          alignment: Alignment.center,
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
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    Localizations.noInternet,
                    textAlign: TextAlign.center,
                    style: textTheme.titleMedium
                        ?.copyWith(fontSize: 30, fontWeight: FontWeight.w800),
                  ),
                  const SizedBox(height: 30),
                  Text(
                    Localizations.noInternetReconnect,
                    textAlign: TextAlign.center,
                    style: textTheme.titleMedium?.copyWith(fontSize: 24),
                  ),
                  const SizedBox(height: 52),
                  GradientButton(
                    onPressed: null,
                    background: theme.scaffoldBackgroundColor,
                    beginGradient: LinearGradient(colors: [
                      gradientColors.btnColor1!,
                      gradientColors.btnColor2!,
                      gradientColors.btnColor3!,
                    ]),
                    endGradient: LinearGradient(colors: [
                      gradientColors.btnColor3!,
                      gradientColors.btnColor2!,
                      gradientColors.btnColor1!,
                    ]),
                    borderRadius: 34,
                    strokeWidth: 3,
                    child: const Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 20, horizontal: 41),
                      child: AnimatedChecking(),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
