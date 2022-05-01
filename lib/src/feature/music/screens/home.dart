import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lively/generated/l10n.dart';

import '../../../widgets/animated_background.dart';
import '../../../widgets/heart_button.dart';
import '../../../widgets/lively_button.dart';
import '../../../widgets/reset_animated_icon.dart';
import '../bloc/azure/azure_cubit.dart';
import '../bloc/likes/likes_bloc.dart';
import '../bloc/radio/music_cubit.dart';
import '/lively_icons.dart';
import '../../../widgets/circle_icon_button.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late final AnimationController controller =
      AnimationController(vsync: this, duration: Duration(milliseconds: 500));
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    late final azuraOnlineRadio = context.watch<AzureCubit>().state;
    late final totalListeners = azuraOnlineRadio?.listeners.total ?? 0;
    final localizations = S.of(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
        body: Stack(children: [
      Positioned(
        width: width,
        height: height * 0.5,
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
                  onTap: () {
                    print(azuraOnlineRadio?.listeners.unique);
                  },
                )
              ],
            ),
            Text('$totalListeners ${localizations.lively}',
                style: textTheme.headline1),
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
      Center(
        child: LivelyButton(
          onTap: () =>
              BlocProvider.of<MusicCubit>(context).play(azuraOnlineRadio!),
          radius: width / 2,
        ),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: SafeArea(
          minimum: EdgeInsets.only(bottom: 20),
          top: false,
          child: Text(
            localizations.changeTheGame,
            style: textTheme.bodyText1,
          ),
        ),
      ),
      BlocBuilder<LikesBloc, LikesState>(
        builder: (context, state) {
          return state.maybeWhen(
              loaded: (cityData) {
                cityData.likes > 0 ? controller.repeat() : controller.reset();
                print(cityData.likes);
                return Stack(
                  children: [
                    Positioned(
                        width: width,
                        top: height * 0.82,
                        child: ResetAnimatedIcon(controller: controller)),
                    Positioned(
                        width: width,
                        top: height * 0.7,
                        child: HeartButton(
                          textTheme: textTheme,
                          controller: controller,
                          countLikes: cityData.likes,
                        )),
                  ],
                );
              },
              orElse: () => const SizedBox());
        },
      )
    ]));
  }
}
