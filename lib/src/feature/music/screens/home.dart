import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lively/generated/l10n.dart';

import '../../../../theme/colors_for_gradient.dart';
import '../../../widgets/animated_background.dart';
import '../../../widgets/heart_button.dart';
import '../../../widgets/lively_button.dart';
import '../../../widgets/reset_animated_icon.dart';
import '../bloc/azura_api_now_playing/azura_api_now_playing_cubit.dart';
import '../bloc/first_run/first_run_cubit.dart';
import '../bloc/likes/likes_bloc.dart';
import '../bloc/radio/radio_cubit.dart';
import '../model/azuracast/azura_api_now_playing.dart';
import '/lively_icons.dart';
import '../../../widgets/circle_icon_button.dart';
import 'no_internet.dart';
import 'onboarding/onboarding.dart';

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
  late final AnimationController controllerHeart = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 100));
  late final AnimationController controllerResetIcon = AnimationController(
      vsync: this, duration: const Duration(milliseconds: 800));
  late final gradientColors = Theme.of(context).extension<ColorsForGradient>()!;
  final ValueNotifier<bool> isLike = ValueNotifier(false);

  @override
  void dispose() {
    controllerLivelyButton.dispose();
    controllerHeart.dispose();
    controllerResetIcon.dispose();
    controllerLivelyIcon.dispose();
    super.dispose();
  }

  Future<dynamic> myShowDialog(BuildContext context, Widget showWidget) {
    return showDialog(
        context: context,
        useSafeArea: false,
        barrierDismissible: false,
        builder: (context) => showWidget);
  }

  void onTap() async {
    HapticFeedback.lightImpact();
    isLike.value = !isLike.value;
    context.read<LikesBloc>().add(const LikesEvent.writeLike());
    controllerLivelyIcon.forward();
    await controllerHeart.forward();
    Future.delayed(const Duration(seconds: 2), (() async {
      await controllerHeart.reverse();
      isLike.value = !isLike.value;
      controllerLivelyIcon.repeat(
          reverse: true, period: const Duration(seconds: 1));
    }));
  }

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    final double radiusButton = width > 500 ? width / 2 : width / 2.1;
    final localizations = S.of(context);

    late final Animation<double> movementResetIcon =
        Tween(begin: 0.0, end: -height * 0.09).animate(CurvedAnimation(
            parent: controllerResetIcon, curve: Curves.easeInOutBack));
    late final increaseHeart = Tween(begin: width * 0.21, end: width * 0.24)
        .animate(CurvedAnimation(
            parent: controllerHeart, curve: Curves.easeOutBack));

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
                      systemOverlayStyle: SystemUiOverlayStyle(
                          systemNavigationBarColor:
                              Theme.of(context).scaffoldBackgroundColor),
                      leadingWidth: 28,
                      leading: CircleIconButton(
                        onTap: () =>
                            Navigator.of(context).pushNamed('/burgerMenu'),
                        child: const Icon(LivelyIcons.menu),
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
                  BlocBuilder<AzuraApiNowPlayingCubit, AzuraApiNowPlaying?>(
                      buildWhen: (previous, current) =>
                          previous?.listeners.unique !=
                          current?.listeners.unique,
                      builder: (context, state) {
                        final total = state?.listeners.total ?? 0;

                        return Text('${total} ${localizations.lively(total)}',
                            style: textTheme.headline1);
                      }),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    localizations.inTheStreamOf,
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
                  BlocBuilder<LikesBloc, LikesState>(
                    buildWhen: ((previous, current) {
                      previous.whenOrNull(
                          getLikes: (data) => controllerResetIcon
                              .forward()
                              .then((_) => controllerResetIcon.reset()));

                      return true;
                    }),
                    builder: (context, state) {
                      return state.when(
                          initial: () => const SizedBox(),
                          getLikes: (cityData) {
                            return ValueListenableBuilder<bool>(
                              valueListenable: isLike,
                              builder: (context, value, _) =>
                                  TweenAnimationBuilder<double>(
                                tween: Tween(begin: 0, end: 1),
                                duration: const Duration(milliseconds: 130),
                                builder: (context, opacity, child) => Opacity(
                                  opacity: opacity,
                                  child: Stack(
                                      alignment: AlignmentDirectional.center,
                                      children: [
                                        Positioned(
                                            width: width,
                                            top: height * 0.26,
                                            child: !value
                                                ? ResetAnimatedIcon(
                                                    controller:
                                                        controllerResetIcon,
                                                    animation:
                                                        movementResetIcon,
                                                  )
                                                : const SizedBox()),
                                        GestureDetector(
                                          onDoubleTap: value ? null : onTap,
                                          child: Container(
                                            color: Colors.transparent,
                                            height: height * 0.36,
                                            child: HeartButton(
                                              text: Text(
                                                  !value
                                                      ? '+${cityData.likes}'
                                                      : '',
                                                  style: textTheme.caption),
                                              increaseHeart: increaseHeart,
                                              controllerHeart: controllerHeart,
                                              textTheme: textTheme,
                                            ),
                                          ),
                                        ),
                                      ]),
                                ),
                              ),
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
                ))
          ],
        ),
      ),
    ));
  }
}
