import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lively/generated/l10n.dart';

import '../../../../theme/gradient_colors.dart';
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
  late final AnimationController controllerLivelyButton =
      AnimationController(vsync: this, duration: Duration(milliseconds: 1000));
  late final AnimationController controllerHeart =
      AnimationController(vsync: this, duration: Duration(milliseconds: 100));
  late final increaseHeart = Tween(begin: 80.0, end: 95.0).animate(
      CurvedAnimation(parent: controllerHeart, curve: Curves.easeOutBack));
  late final AnimationController controllerResetIcon =
      AnimationController(vsync: this, duration: Duration(milliseconds: 300));
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
    Future.delayed(Duration(milliseconds: 300), (() async {
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
    final gradientTheme = Theme.of(context).extension<GradientColors>()!;
    final radiusButton = width < 400 ? width / 2 : 200.0;
    late final Animation<double> movementResetIcon =
        Tween(begin: 5.0, end: -height * 0.13).animate(controllerResetIcon);
    return Scaffold(
        body: Stack(children: [
      Positioned(
        width: width,
        height: height * 0.54,
        child: AnimatedBackground(),
      ),
      Padding(
        padding: EdgeInsets.symmetric(
          horizontal: 16.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SafeArea(
              bottom: false,
              minimum: EdgeInsets.only(top: height * 0.06),
              child: AppBar(
                leadingWidth: 28,
                leading: CircleIconButton(
                  onTap: () => Navigator.of(context).pushNamed('/burgerMenu'),
                  child: Icon(LivelyIcons.menu),
                ),
                actions: [
                  CircleIconButton(
                    child: Icon(LivelyIcons.question),
                    onTap: () {},
                  )
                ],
              ),
            ),
            BlocConsumer<AzuraCastCubit, AzuraCastState>(
              listenWhen: (previous, current) => previous != current,
              buildWhen: (previous, current) => previous != current,
              listener: (context, state) => state.whenOrNull(
                  error: () => showDialog(
                      context: context,
                      barrierDismissible: false,
                      useSafeArea: false,
                      builder: (context) => NoInternet()),
                  getAzuraCast: (_) => Navigator.canPop(context)
                      ? Navigator.pop(context)
                      : null),
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
            SizedBox(
              height: height * 0.01,
            ),
            Text(
              '${localizations.inTheStreamOf} ',
              style: textTheme.subtitle1,
            )
          ],
        ),
      ),
      SafeArea(
        minimum: EdgeInsets.only(bottom: 10),
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
                                onTap: value ? null : onTap,
                                child: Container(
                                  padding: EdgeInsets.only(top: 20),
                                  color: Colors.transparent,
                                  height: height * 0.4,
                                  child: HeartButton(
                                    text: Text(
                                        !value ? '${cityData.likes}' : '',
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
            beginGradient:
                gradientTheme.backgroundLivelyButtonStart as LinearGradient,
            endGradient:
                gradientTheme.backgroundLivelyButtonEnd as LinearGradient,
          )),
    ]));
  }
}
