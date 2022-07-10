import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:lively/main.dart';

import '../generated/l10n.dart';
import '../theme/theme.dart';
import 'feature/music/bloc/azuracast/azuracast_cubit.dart';
import 'feature/music/bloc/likes/likes_cubit.dart';
import 'feature/music/bloc/radio/radio_cubit.dart';
import 'feature/music/logic/firestore.dart';
import 'feature/music/logic/my_audioplayer_handler.dart';
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
      darkTheme: MyThemes.darkTheme,
      themeMode: ThemeMode.system,
      home: MultiBlocProvider(
        providers: [
          BlocProvider<AzuraCastCubit>(
            create: (context) {
              final azuraRadio =
                  'wss://s.livelyoneapp.ru/api/live/nowplaying/lively';
              return AzuraCastCubit(azuraRadio);
            },
          ),
          BlocProvider<RadioCubit>(
            create: (context) {
              final azureCubit = BlocProvider.of<AzuraCastCubit>(context);
              return RadioCubit(
                  myAudioHandler: audioHandler, azureCubit: azureCubit);
            },
          ),
          BlocProvider<LikesCubit>(
            create: (context) {
              final store = Firestore();
              final musicBloc = BlocProvider.of<RadioCubit>(context);
              return LikesCubit(store: store, musicCubit: musicBloc);
            },
          ),
        ],
        child: const Home(),
      ),
    );
  }
}
