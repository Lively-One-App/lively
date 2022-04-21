import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:just_audio/just_audio.dart';

import '../generated/l10n.dart';
import '../theme.dart';
import 'feature/music/bloc/likes/likes_bloc.dart';
import 'feature/music/bloc/radio/music_bloc.dart';
import 'feature/music/logic/azura_online_radio.dart';
import 'feature/music/logic/fire_function.dart';
import 'feature/music/logic/firestore.dart';
import 'feature/music/screens/home.dart';
import 'routes.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      routes: Routes.routing(),
      theme: MyThemes.lightTheme,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<MusicBloc>(
            create: (context) {
              // final azuraRadio = AzuraOnlineRadio('https://s.livelyoneapp.ru/api');
              final azuraRadio =
                  AzuraOnlineRadio('https://demo.azuracast.com/api');
              final audioPlayer = AudioPlayer();
              return MusicBloc(
                onlineRadio: azuraRadio,
                audioPlayer: audioPlayer,
              );
            },
          ),
          BlocProvider<LikesBloc>(
            create: (context) {
              final store = Firestore();
              final fireFunction = FireFunction();
              final musicBloc = BlocProvider.of<MusicBloc>(context);
              return LikesBloc(
                  fireFunction: fireFunction,
                  store: store,
                  musicBloc: musicBloc);
            },
          ),
        ],
        child: const Home(),
      ),
    );
  }
}
