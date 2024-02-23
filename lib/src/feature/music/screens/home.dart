import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lively/generated/l10n.dart';
import 'package:lively/src/feature/music/bloc/run_string/run_string_bloc.dart';
import 'package:lively/src/feature/music/logic/notification_service.dart';
import 'package:lively/src/widgets/marquee.dart';
import '../../../../theme/colors_for_gradient.dart';
import '../../../widgets/animated_background.dart';
import '../../../widgets/likes_area.dart';
import '../../../widgets/lively_button.dart';
import '../bloc/azura_api_now_playing/azura_api_now_playing_cubit.dart';
import '../bloc/first_run/first_run_cubit.dart';
import '../bloc/likes/likes_bloc.dart';
import '../bloc/radio/radio_cubit.dart';
import '../model/azuracast/azura_api_now_playing.dart';
import '/lively_icons.dart';
import '../../../widgets/circle_icon_button.dart';
import 'no_internet.dart';
import 'onboarding/onboarding.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late final AnimationController controllerLivelyButton = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 400));
  late final AnimationController controllerLivelyIcon = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 130));
  late final AnimationController controllerTextHeart = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 400));
  late final AnimationController controllerHeart = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 100));
  late final AnimationController controllerResetIcon = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 800));
  late final gradientColors = Theme.of(context).extension<ColorsForGradient>()!;

  final ValueNotifier<bool> isLike = ValueNotifier(false);

  Future<dynamic> myShowDialog(BuildContext context, Widget showWidget) {
    return showDialog(
        context: context,
        useSafeArea: false,
        barrierDismissible: false,
        builder: (context) => showWidget);
  }

  @override
  void initState() {
    super.initState();
  }

  void onDoubleTap() async {
    context.read<LikesBloc>().add(const LikesEvent.writeLike());
    HapticFeedback.lightImpact();
    isLike.value = !isLike.value;
    controllerLivelyIcon.forward();
    await controllerHeart.forward();
    await Future.delayed(const Duration(milliseconds: 500));
    await controllerHeart.reverse();
    isLike.value = !isLike.value;
    controllerLivelyIcon.repeat(
        reverse: true, period: const Duration(seconds: 1));
  }

  @override
  void dispose() {
    controllerLivelyButton.dispose();
    controllerHeart.dispose();
    controllerResetIcon.dispose();
    controllerLivelyIcon.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final double radiusButton = width > 500 ? width / 2 : width / 2.1;
    final localizations = S.of(context);

    return Scaffold(
        body: BlocListener<FirstRunCubit, FirstRunState>(
      listener: (context, state) {
        state.whenOrNull(
          onFirstRun: () => myShowDialog(context, const OnBoarding()),
        );
      },
      child: BlocListener<RadioCubit, RadioState>(
        listenWhen: (previous, current) => previous != current,
        listener: (context, state) {
          state.when(
            initial: () => controllerLivelyButton.reset(),
            beforePlaying: () {
              controllerLivelyButton.repeat(reverse: true);
            },
            loaded: () {
              controllerLivelyButton.reset();
              controllerLivelyIcon.repeat(
                  reverse: true, period: const Duration(milliseconds: 1000));
            },
            beforeStopping: () {
              controllerLivelyIcon.reverse();
              controllerLivelyButton.repeat(reverse: true);
            },
            error: (message) {
              controllerLivelyButton.reset();
              controllerLivelyIcon.reset();

              return myShowDialog(context, const NoInternet());
            },
          );
        },
        child: Stack(
          children: [
            Column(
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
                  width: width,
                  height: height * 0.54,
                  child: Padding(
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
                            systemOverlayStyle: SystemUiOverlayStyle(
                                systemNavigationBarColor:
                                    Theme.of(context).scaffoldBackgroundColor),
                            leadingWidth: 30,
                            leading: CircleIconButton(
                              onTap: () => Navigator.of(context)
                                  .pushNamed('/burgerMenu'),
                              child: const Icon(
                                LivelyIcons.menu,
                                size: 30,
                              ),
                            ),
                            actions: [
                              CircleIconButton(
                                child: const Icon(LivelyIcons.question),
                                onTap: () => myShowDialog(
                                  context,
                                  const OnBoarding(),
                                ),
                              )
                            ],
                          ),
                        ),
                        BlocBuilder<AzuraApiNowPlayingCubit,
                                AzuraApiNowPlaying?>(
                            buildWhen: (previous, current) =>
                                previous?.listeners.unique !=
                                current?.listeners.unique,
                            builder: (context, state) {
                              final unique = state?.listeners.total ?? 0;

                              return Text(
                                  '$unique ${localizations.lively(unique)}',
                                  style: textTheme.displayLarge);
                            }),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          localizations.inTheStreamOf,
                          style: textTheme.titleMedium,
                        )
                      ],
                    ),
                  ),
                ),
                LikesArea(
                  controllerTextHeart: controllerTextHeart,
                  isLike: isLike,
                  controllerHeart: controllerHeart,
                  controllerResetIcon: controllerResetIcon,
                  onDoubleTap: onDoubleTap,
                ),
                ValueListenableBuilder<bool>(
                  valueListenable: isLike,
                  builder: (context, value, _) => SafeArea(
                    minimum: EdgeInsets.only(bottom: height < 700 ? 31 : 45),
                    top: false,
                    child: BlocBuilder<RunStringBloc, RunStringState>(
                      // buildWhen: (previous, current) =>
                      //     current is RunStringUpdateState,
                      builder: (context, state) {
                        return state is RunStringUpdateState
                            ? SizedBox(
                                height: 30,
                                width: MediaQuery.of(context).size.width,
                                child: Center(
                                    child: Padding(
                                        padding: EdgeInsets.symmetric(
                                                horizontal:
                                                    MediaQuery.of(context)
                                                        .size
                                                        .width) *
                                            0.05,
                                        child: MarqueeWidget(
                                          text: state.runString,
                                          direction: Axis.horizontal,
                                          style: textTheme.bodyLarge!,
                                        ))),
                              )
                            : Text(
                                !value
                                    ? localizations.changeTheGame
                                    : localizations.likeNotification,
                                style: textTheme.bodyLarge,
                              );
                      },
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
                width: width,
                top: height * 0.54 - radiusButton / 2,
                child: LivelyButton(
                  controllerLivelyIcon: controllerLivelyIcon,
                  radius: radiusButton,
                  controllerLivelyButton: controllerLivelyButton,
                  onTap: () {
                    HapticFeedback.selectionClick();
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
            Positioned(
                //left: MediaQuery.of(context).size.width * 0.83,
                left: MediaQuery.of(context).size.width * 0.5,
                top: MediaQuery.of(context).size.height * 0.32,
                child: IconButton(
                  icon: SvgPicture.asset('assets/map_icon.svg'),
                  iconSize: 57,
                  onPressed: () {
                    Navigator.of(context).pushNamed('/map');
                  },
                )),
          ],
        ),
      ),
    ));
  }
}
