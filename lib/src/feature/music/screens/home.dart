import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lively/generated/l10n.dart';

import '../../../../theme/colors_for_gradient.dart';
import '../../../widgets/animated_background.dart';
import '../../../widgets/heart_button.dart';
import '../../../widgets/lively_button.dart';
import '../../../widgets/reset_animated_icon.dart';
import '../bloc/azuracast/azuracast_cubit.dart';
import '../bloc/likes/likes_cubit.dart';
import '../bloc/radio/radio_cubit.dart';
import '/lively_icons.dart';
import '../../../widgets/circle_icon_button.dart';
import 'no_internet.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late final AnimationController controllerLivelyButton = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 1000));
  late final AnimationController controllerHeart = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 100));
  late final increaseHeart = Tween(begin: 80.0, end: 95.0).animate(
      CurvedAnimation(parent: controllerHeart, curve: Curves.easeOutBack));
  late final AnimationController controllerResetIcon = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 300));
  final ValueNotifier<bool> isLike = ValueNotifier(false);

  void dispose() {
    controllerLivelyButton.dispose();
    controllerHeart.dispose();
    controllerResetIcon.dispose();
    super.dispose();
  }

  void onTap() async {
    isLike.value = !isLike.value;
    context.read<LikesCubit>().writeLike();
    controllerLivelyButton.stop();
    await controllerHeart.forward();
    Future.delayed(const Duration(seconds: 2), (() async {
      await controllerHeart.reverse();
      isLike.value = !isLike.value;
      controllerLivelyButton.repeat(reverse: true);
    }));
  }

  @override
  Widget build(BuildContext context) {
    final localizations = S.of(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final textTheme = Theme.of(context).textTheme;
    final gradientColors = Theme.of(context).extension<ColorsForGradient>()!;
    final radiusButton = width < 400 ? width / 2 : 200.0;
    late final Animation<double> movementResetIcon =
        Tween(begin: 5.0, end: -height * 0.13).animate(controllerResetIcon);

    return Scaffold(
        body: Stack(children: [
      Positioned(
        width: width,
        height: height * 0.54,
        child: AnimatedBackground(
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
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              bottom: false,
              minimum: EdgeInsets.only(top: height * 0.07),
              child: AppBar(
                leadingWidth: 28,
                leading: CircleIconButton(
                  onTap: () => Navigator.of(context).pushNamed('/burgerMenu'),
                  child: const Icon(LivelyIcons.menu),
                ),
                actions: const [
                  CircleIconButton(
                    child: const Icon(LivelyIcons.question),
                    onTap: null,
                  )
                ],
              ),
            ),
            BlocConsumer<AzuraCastCubit, AzuraCastState>(
              listenWhen: (previous, current) => previous != current,
              buildWhen: (previous, current) => previous != current,
              listener: (context, state) {
                state.whenOrNull(
                  error: () {
                    return showDialog(
                        context: context,
                        useSafeArea: false,
                        barrierDismissible: false,
                        builder: (context) => const NoInternet());
                  },
                );
              },
              builder: (context, state) {
                final listeners = state.whenOrNull(
                  getAzuraCast: (azuraApiNowPlaying) {
                    return azuraApiNowPlaying.listeners.total;
                  },
                );

                return Text('${listeners ?? 0} ${localizations.lively}',
                    style: textTheme.headline1);
              },
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              S.delegate.isSupported(const Locale('_ru'))
                  ? localizations.inTheStreamOf + ' MOSKOW'
                  : localizations.inTheStreamOf + ' МОСКВЫ',
              style: textTheme.subtitle1,
            )
          ],
        ),
      ),
      SafeArea(
        minimum: const EdgeInsets.only(bottom: 25),
        top: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            BlocBuilder<LikesCubit, LikesState>(
              buildWhen: (previous, current) =>
                  !controllerResetIcon.isAnimating,
              builder: (context, state) {
                return state.when(
                    initial: () => const SizedBox(),
                    getLikes: (cityData) {
                      if (cityData.likes == 0)
                        controllerResetIcon
                            .forward()
                            .then((_) => controllerResetIcon.reset());

                      return ValueListenableBuilder<bool>(
                        valueListenable: isLike,
                        builder: (context, value, _) => Stack(
                            alignment: AlignmentDirectional.bottomCenter,
                            children: [
                              Positioned(
                                  width: width,
                                  bottom: height * 0.05,
                                  child: !value
                                      ? ResetAnimatedIcon(
                                          controller: controllerResetIcon,
                                          animation: movementResetIcon,
                                        )
                                      : const SizedBox()),
                              GestureDetector(
                                onDoubleTap: value ? null : onTap,
                                child: Container(
                                  padding: const EdgeInsets.only(top: 20),
                                  color: Colors.transparent,
                                  height: height * 0.4,
                                  child: HeartButton(
                                    text: Text(
                                        !value ? '+${cityData.likes}' : '',
                                        style: textTheme.caption),
                                    increaseHeart: increaseHeart,
                                    controllerHeart: controllerHeart,
                                    textTheme: textTheme,
                                  ),
                                ),
                              ),
                            ]),
                      );
                    });
              },
            ),
            Center(
              child: ValueListenableBuilder<bool>(
                valueListenable: isLike,
                builder: (context, value, _) => Text(
                  !value
                      ? localizations.changeTheGame
                      : localizations.likeNotification,
                  style: textTheme.bodyText1,
                ),
              ),
            ),
          ],
        ),
      ),
      Positioned(
          width: width,
          top: height * 0.54 - radiusButton / 2,
          child: LivelyButton(
            radius: radiusButton,
            controller: controllerLivelyButton,
            onTap: () {
              controllerLivelyButton.repeat(reverse: true);
              context.read<RadioCubit>().playAndStop();
            },
            beginGradient: LinearGradient(
              colors: [
                gradientColors.btnColor1!,
                gradientColors.btnColor2!,
                gradientColors.btnColor3!
              ],
            ),
            endGradient: LinearGradient(
              colors: [
                gradientColors.btnColor3!,
                gradientColors.btnColor2!,
                gradientColors.btnColor1!
              ],
            ),
          )),
    ]));
  }
}
