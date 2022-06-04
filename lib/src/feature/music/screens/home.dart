import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lively/generated/l10n.dart';

import '../../../../theme.dart';
import '../../../widgets/animated_background.dart';
import '../../../widgets/heart_button.dart';
import '../../../widgets/lively_button.dart';
import '../../../widgets/reset_animated_icon.dart';
import '../bloc/azure/azure_cubit.dart';
import '../bloc/likes/likes_bloc.dart';
import '../bloc/radio/music_cubit.dart';
import '../model/azuracast/azura_api_now_playing.dart';
import '/lively_icons.dart';
import '../../../widgets/circle_icon_button.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late final AnimationController controllerLivelyButton =
      AnimationController(vsync: this, duration: Duration(milliseconds: 500));
  late final AnimationController controllerHeart =
      AnimationController(vsync: this, duration: Duration(milliseconds: 100));
  late final increaseHeart = Tween(begin: 80.0, end: 95.0).animate(
      CurvedAnimation(parent: controllerHeart, curve: Curves.easeOutBack));
  late final AnimationController controllerResetIcon =
      AnimationController(vsync: this, duration: Duration(milliseconds: 200));
  late final Animation<double> movementResetIcon =
      Tween(begin: 5.0, end: -90.0).animate(controllerResetIcon);
  final ValueNotifier<bool> isLike = ValueNotifier(false);

  void dispose() {
    controllerLivelyButton.dispose();
    controllerHeart.dispose();
    controllerResetIcon.dispose();
    super.dispose();
  }

  void onTap() {
    isLike.value = !isLike.value;
    context.read<LikesCubit>().writeLike();
    controllerLivelyButton.stop();
    controllerHeart.forward().whenComplete(() {
      controllerHeart.reverse().whenComplete(() {
        isLike.value = !isLike.value;
        controllerLivelyButton.repeat(reverse: true);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final localizations = S.of(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final textTheme = Theme.of(context).textTheme;
    final radiusButton = width < 400 ? width / 2 : 200.0;
    late final AzuraApiNowPlaying totalListeners =
        context.read<AzureCubit>().state!;
    return Scaffold(
        body: Stack(children: [
      Positioned(
        width: width,
        height: height * 0.54,
        child: AnimatedBackground(),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AppBar(
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
            BlocBuilder<AzureCubit, AzuraApiNowPlaying?>(
              builder: (context, state) {
                return Text(
                    '${state?.listeners.total ?? 0} ${localizations.lively}',
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
                      controllerResetIcon
                          .forward()
                          .whenComplete(() => controllerResetIcon.reset());

                      return ValueListenableBuilder<bool>(
                        valueListenable: isLike,
                        builder: (context, value, _) => Stack(
                            alignment: AlignmentDirectional.bottomCenter,
                            children: [
                              GestureDetector(
                                onTap: onTap,
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
                              Positioned(
                                  width: width,
                                  bottom: height * 0.05,
                                  child: !value
                                      ? ResetAnimatedIcon(
                                          controller: controllerResetIcon,
                                          animation: movementResetIcon,
                                        )
                                      : const SizedBox()),
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
                  // textAlign: TextAlign.center,
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
              context.read<MusicCubit>().play(totalListeners);
            },
            beginGradient: MyThemes.backGroundButtonGradientBegin,
            endGradient: MyThemes.backGroundButtonGradientBegin,
          )),
    ]));
  }
}
