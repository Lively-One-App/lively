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
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    final textTheme = Theme.of(context).textTheme;
    return Scaffold(
      body: BlocBuilder<MusicBloc, MusicState>(
        builder: (context, state) {
          return Stack(children: [
            Positioned(
              width: width,
              height: height * 0.5,
              child: AnimatedGradientBackgroundContainer(),
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
                        onTap: () =>
                            Navigator.of(context).pushNamed('/burgerMenu'),
                      ),
                      actions: [
                        MyIconButton(
                          child: Icon(LivelyIcons.question),
                          onTap: () {
                            var a = FirebaseFunctions.instance
                                .httpsCallable('writeToFirestore')
                                .call('hello')
                                .then((value) => print(value.data));
                          },
                        )
                      ],
                    ),
                    Text('889 ${localizations.lively}',
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
                      context.read<MusicBloc>().add(MusicEvent.joinFlow());
                    })),
            Positioned(
                child: Center(
              child: SafeArea(
                top: false,
                child: state.maybeWhen(
                    orElse: () => Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              Text(
                                localizations.changeTheGame,
                                style: textTheme.bodyText1,
                              ),
                            ]),
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
                            style: textTheme.bodyText1,
                          ),
                        ],
                      );
                    }),
              ),
            ))
          ]);
        },
      ),
    );
  }
}
