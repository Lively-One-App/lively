import 'dart:async';
import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:l/l.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'src/common/bloc/app_bloc_observer.dart';
import 'src/feature/music/bloc/azura_api_now_playing/azura_api_now_playing_cubit.dart';
import 'src/feature/music/bloc/first_run/first_run_cubit.dart';
import 'src/feature/music/bloc/likes/likes_cubit.dart';
import 'src/feature/music/bloc/radio/radio_cubit.dart';
import 'src/feature/music/logic/firestore.dart';
import 'src/feature/music/logic/my_audioplayer_handler.dart';
import 'src/feature/music/logic/websocket_auto_reconnect.dart';
import 'src/my_app.dart';

//late MyAudioPlayerHandler audioHandler;
void main() => runZonedGuarded<void>(
      () async {
        WidgetsFlutterBinding.ensureInitialized();
        await Firebase.initializeApp();
        SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
        SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark));

        BlocOverrides.runZoned(
          () async {
            final audioHandler = await AudioService.init(
              builder: () => MyAudioPlayerHandler(),
              config: const AudioServiceConfig(
                androidNotificationChannelId:
                    'com.ryanheise.lively.channel.audio',
                androidNotificationChannelName: 'Audio playback',
                androidNotificationOngoing: true,
              ),
            );
            final socket = await WebSocketAutoReconnect(
              Uri.parse('wss://s.livelyoneapp.ru/api/live/nowplaying/lively'),
            );
            final sharedPreferences = await SharedPreferences.getInstance();
            FlutterError.onError =
                FirebaseCrashlytics.instance.recordFlutterError;
            runApp(MultiBlocProvider(
              providers: [
                BlocProvider<AzuraApiNowPlayingCubit>(
                    create: (context) => AzuraApiNowPlayingCubit()),
                BlocProvider<FirstRunCubit>(
                    create: (context) => FirstRunCubit(sharedPreferences)),
                BlocProvider<RadioCubit>(
                  create: (context) {
                    final azuraApiNowPlayingCubit =
                        BlocProvider.of<AzuraApiNowPlayingCubit>(context);

                    return RadioCubit(
                        myAudioHandler: audioHandler,
                        azuraApiNowPlayingCubit: azuraApiNowPlayingCubit,
                        webSocket: socket);
                  },
                ),
                BlocProvider<LikesCubit>(
                  create: (context) {
                    final store = Firestore();
                    final musicBloc = BlocProvider.of<RadioCubit>(context);

                    return LikesCubit(store: store, musicCubit: musicBloc);
                  },
                )
              ],
              child: const MyApp(),
            ));
          },
          blocObserver: AppBlocObserver.instance(),
        );
      },
      (error, stackTrace) {
        if (error is PlatformException) {
          l.e(error);
        } else {
          FirebaseCrashlytics.instance.recordError(error, stackTrace);
        }
      },
    );
