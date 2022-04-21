import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lively/generated/l10n.dart';

import '../../../widgets/animated_background.dart';
import '../bloc/likes/likes_bloc.dart';
import '../bloc/radio/music_bloc.dart';
import '/lively_icons.dart';
import '../../../widgets/my_icon_button.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  late AnimationController _controller =
      AnimationController(vsync: this, duration: Duration(milliseconds: 500));

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
        Positioned(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBar(
                  leading: MyIconButton(
                    child: Icon(LivelyIcons.menu),
                    onTap: () => Navigator.of(context).pushNamed('/burgerMenu'),
                  ),
                  actions: [
                    MyIconButton(
                      child: Icon(LivelyIcons.question),
                      onTap: () {},
                    )
                  ],
                ),
                Text('889 ${localizations.lively}', style: textTheme.headline1),
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
        ),
        Positioned(
            left: width / 4,
            top: height * 0.5 - width / 4,
            child: MyIconButton(
                color: Colors.amber,
                child: const Icon(
                  LivelyIcons.lively,
                  size: 70,
                ),
                radius: width / 2,
                onTap: () {
                  BlocProvider.of<MusicBloc>(context)
                      .add(MusicEvent.playRadio());
                })),
        Positioned(
          child: Center(
            child:
                BlocBuilder<LikesBloc, LikesState>(builder: (context, state) {
              return SafeArea(
                top: false,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: state.maybeWhen(
                        loaded: (dataCity) {
                          if (dataCity.likes > 0) _controller.repeat();
                          return [
                            MyIconButton(
                              child: Stack(
                                alignment: AlignmentDirectional.center,
                                children: [
                                  Icon(
                                    LivelyIcons.heart,
                                    size: 70,
                                  ),
                                  Text('${dataCity.likes}',
                                      style: textTheme.caption),
                                ],
                              ),
                              onTap: () {
                                BlocProvider.of<LikesBloc>(context)
                                    .add(LikesEvent.putLikes());
                              },
                            ),
                            SizedBox(height: height * 0.03),
                            ResetAnimatedButton(controller: _controller),
                            SizedBox(height: height * 0.08),
                            Text(
                              localizations.changeTheGame,
                              style: textTheme.bodyText1,
                            ),
                          ];
                        },
                        orElse: () => [
                              Text(
                                localizations.changeTheGame,
                                style: textTheme.bodyText1,
                              ),
                            ])),
              );
            }),
          ),
        )
      ]),
    );
  }
}

class ResetAnimatedButton extends StatefulWidget {
  const ResetAnimatedButton({Key? key, required this.controller})
      : super(key: key);

  final AnimationController controller;
  @override
  State<ResetAnimatedButton> createState() => _ResetAnimatedButtonState();
}

class _ResetAnimatedButtonState extends State<ResetAnimatedButton> {
  late Animation<double> movement =
      Tween(begin: 0.0, end: 55.0).animate(widget.controller);

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: widget.controller,
      builder: (context, child) {
        return Transform.translate(
          offset: Offset(0, -movement.value),
          child: MyIconButton(
            child: Column(
              children: [
                Icon(
                  LivelyIcons.reset,
                  color: Theme.of(context).appBarTheme.iconTheme?.color,
                ),
                Text('5 сек')
              ],
            ),
          ),
        );
      },
    );
  }
}
