import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:just_audio/just_audio.dart';

import '../generated/l10n.dart';
import '../theme.dart';
import 'feature/authenticate/cubit/authentication_cubit.dart';
import 'feature/authenticate/logic/fire_auth.dart';
import 'feature/music/bloc/azure/azure_cubit.dart';
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
          BlocProvider<AuthenticationCubit>(
            create: (context) {
              final auth = FireAuth();
              return AuthenticationCubit(auth);
            },
          ),
          BlocProvider<AzureCubit>(
            create: (context) {
              // final azuraRadio = AzuraOnlineRadio('https://s.livelyoneapp.ru/api');
              final azuraRadio =
                  AzuraOnlineRadio('https://demo.azuracast.com/api');
              return AzureCubit(azuraRadio);
            },
          ),
          BlocProvider<MusicBloc>(
            create: (context) {
              final azureCubit = context.read<AzureCubit>();
              final audioPlayer = AudioPlayer();
              final authCubit = BlocProvider.of<AuthenticationCubit>(context);
              return MusicBloc(
                  azureCubit: azureCubit,
                  audioPlayer: audioPlayer,
                  authCubit: authCubit);
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
