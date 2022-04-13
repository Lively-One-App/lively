import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:just_audio/just_audio.dart';

import '../generated/l10n.dart';
import '../theme.dart';
import 'feature/music/bloc/music_bloc.dart';
import 'feature/music/logic/azura_online_radio.dart';
import 'feature/music/logic/firestore.dart';
import 'feature/music/logic/online_radio_impl.dart';
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
      home: BlocProvider<MusicBloc>(
        create: (context) {
          final OnlineRadioImpl azuraRadio = AzuraOnlineRadio();
          final audioPlayer = AudioPlayer();
          final store = Firestore();
          return MusicBloc(
              onlineRadio: azuraRadio, audioPlayer: audioPlayer, store: store);
        },
        child: const Home(),
      ),
    );
  }
}
