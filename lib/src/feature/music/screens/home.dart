import 'package:cloud_functions/cloud_functions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lively/generated/l10n.dart';
import '../bloc/music_bloc.dart';
import '../logic/firestore.dart';
import '../model/firestore/user_data.dart';
import '/lively_icons.dart';
import '../../../widgets/my_icon_button.dart';
import '/src/widgets/animated_gradient_background_container.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    final localizations = S.of(context);
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);

    final height = mediaQuery.size.height - mediaQuery.viewPadding.vertical;
    final width = mediaQuery.size.width;

    final livelyButtonSize = width / 2;

    return Scaffold(
      body: BlocBuilder<MusicBloc, MusicState>(
        builder: (context, state) {
          return Padding(
            padding: mediaQuery.viewPadding,
            child: Stack(
              children: [
                Positioned(
                  width: width,
                  height: height * 0.5,
                  child: AnimatedGradientBackgroundContainer(),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppBar(
                        automaticallyImplyLeading: false,
                        titleSpacing: 0,
                        title: Row(
                          children: [
                            MyIconButton(
                              child: Icon(LivelyIcons.menu),
                              onTap: () => Navigator.of(context)
                                  .pushNamed('/burgerMenu'),
                            ),
                            const Spacer(),
                            MyIconButton(
                              child: Icon(LivelyIcons.question),
                              onTap: () {
                                var a = FirebaseFunctions.instance
                                    .httpsCallable('writeToFirestore')
                                    .call('hello')
                                    .then((value) => print(value.data));
                              },
                            ),
                          ],
                        ),
                      ),
                      Text('889 ${localizations.lively}',
                          style: theme.textTheme.headline1),
                      SizedBox(
                        height: height * 0.01,
                      ),
                      Text(
                        '${localizations.inTheStreamOf} ',
                        style: theme.textTheme.subtitle1,
                      )
                    ],
                  ),
                ),
                Center(
                  child: MyIconButton(
                    color: Colors.amber,
                    child: const Icon(
                      LivelyIcons.lively,
                      size: 70,
                    ),
                    radius: livelyButtonSize * 0.5,
                    onTap: () {
                      context.read<MusicBloc>().add(MusicEvent.joinFlow());
                    },
                  ),
                ),
                Positioned(
                  child: Center(
                    child: state.maybeWhen(
                      orElse: () => Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            localizations.changeTheGame,
                            style: theme.textTheme.bodyText1,
                          ),
                          SizedBox(height: height * 0.025),
                        ],
                      ),
                      loaded: (data, _) {
                        final userData = data as UserData;
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
                                MyIconButton(
                                  child: Icon(LivelyIcons.heart),
                                  radius: 70,
                                ),
                                Text(userData.likes),
                              ],
                            ),
                            SizedBox(height: height * 0.03),
                            MyIconButton(
                              child: Column(
                                children: [
                                  Icon(
                                    LivelyIcons.reset,
                                    color: Theme.of(context)
                                        .appBarTheme
                                        .iconTheme
                                        ?.color,
                                  ),
                                  Text('5 сек')
                                ],
                              ),
                            ),
                            SizedBox(height: height * 0.08),
                            Text(
                              localizations.changeTheGame,
                              style: theme.textTheme.bodyText1,
                            ),
                            SizedBox(height: height * 0.025),
                          ],
                        );
                      },
                    ),
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
