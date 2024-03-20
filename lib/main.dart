import 'dart:async';
import 'dart:io';

import 'package:appmetrica_plugin/appmetrica_plugin.dart';
import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:l/l.dart';

import 'package:lively/src/feature/music/bloc/azura_api_now_paying/azura_api_now_playing_cubit.dart';

import 'package:lively/src/feature/music/bloc/map/map_bloc.dart';
import 'package:lively/src/feature/music/bloc/sync_server/sync_server_cubit.dart';
import 'package:lively/src/feature/music/bloc/run_string/run_string_bloc.dart';
import 'package:lively/src/feature/music/logic/notification_service.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'src/common/bloc/app_bloc_observer.dart';
import 'src/feature/music/bloc/first_run/first_run_cubit.dart';
import 'src/feature/music/bloc/likes/likes_bloc.dart';
import 'src/feature/music/bloc/radio/radio_cubit.dart';
import 'src/feature/music/logic/firestore.dart';
import 'src/feature/music/logic/my_audioplayer_handler.dart';
import 'src/feature/music/logic/websocket_auto_reconnect.dart';
import 'src/my_app.dart';

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (X509Certificate cert, String host, int port) {
        return true;
      };
  }
}

String stateApp = '';

const notificationChannelId = 'my_foreground';

// this will be used for notification id, So you can update your custom notification with this id.
const notificationId = 888;

AppMetricaConfig get _config =>
    const AppMetricaConfig('3b254864-c192-486a-8393-c4e233b75edd', logs: true);

void main() => runZonedGuarded<void>(
      () async {
        HttpOverrides.global = MyHttpOverrides();

        WidgetsFlutterBinding.ensureInitialized();

        await AppMetrica.activate(_config);

        await NotificationService.initialize();

        await Supabase.initialize(
          url: 'https://nkbxxphgbtkznybnrrmw.supabase.co',
          anonKey:
              'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5rYnh4cGhnYnRrem55Ym5ycm13Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDIzMDE2NzcsImV4cCI6MjAxNzg3NzY3N30.gLCP-HMKfYoWZKUPe4bMyRRYifProxRObRaNcB-X664',
        );

        SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
        SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark));

        Bloc.observer = AppBlocObserver.instance();

        final sharedPreferences = await SharedPreferences.getInstance();

        SystemChannels.lifecycle.setMessageHandler((message) async {
          stateApp = message ?? '';
        });
        final audioHandler = await AudioService.init(
          builder: () => MyAudioPlayerHandler(sharedPreferences),
          config: const AudioServiceConfig(
            androidNotificationChannelId: 'com.mycompany.myapp.audio',
            androidNotificationChannelName: 'Audio Service Demo',
            androidNotificationOngoing: true,
            androidStopForegroundOnPause: true,
          ),
        );
        if (audioHandler.isFirstPlay) {
          await audioHandler.setFirstPlayAudio();
        }
        final socket = WebSocketAutoReconnect(
          Uri.parse('wss://s.livelyoneapp.ru/api/live/nowplaying/websocket'),
        );

        // FlutterError.onError =
        //     await FirebaseCrashlytics.instance.recordFlutterError;
        final store = SupabaseHelper(sharedPreferences);
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
            BlocProvider<SyncServerCubit>(
                create: (context) => SyncServerCubit()),
            BlocProvider<LikesBloc>(
              create: (context) {
                final radioCubit = BlocProvider.of<RadioCubit>(context);
                final syncServerCubit =
                    BlocProvider.of<SyncServerCubit>(context);

                return LikesBloc(
                  syncServerCubit: syncServerCubit,
                  store: store,
                  radioCubit: radioCubit,
                );
              },
            ),
            BlocProvider<MapBloc>(
                create: ((context) => MapBloc(store, sharedPreferences))),
            BlocProvider<RunStringBloc>(
                create: ((context) => RunStringBloc(store))),
          ],
          child: const MyApp(),
        ));

        //   },
        //   blocObserver: AppBlocObserver.instance(),
        // );
      },
      (error, stackTrace) {
        if (error is PlatformException) {
          l.e(error);
        } else {
          //FirebaseCrashlytics.instance.recordError(error, stackTrace);
        }
      },
    );
