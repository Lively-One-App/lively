import 'dart:async';
import 'dart:io';
import 'package:audio_service/audio_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:l/l.dart';
import 'package:lively/src/feature/music/bloc/map/map_bloc.dart';
import 'package:lively/src/feature/music/bloc/sync_server/sync_server_cubit.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'src/common/bloc/app_bloc_observer.dart';
import 'src/feature/music/bloc/azura_api_now_playing/azura_api_now_playing_cubit.dart';
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

void main() => runZonedGuarded<void>(
      () async {
        HttpOverrides.global = MyHttpOverrides();

        WidgetsFlutterBinding.ensureInitialized();
        await Supabase.initialize(
    url: 'https://nkbxxphgbtkznybnrrmw.supabase.co',
    anonKey:
        'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6Im5rYnh4cGhnYnRrem55Ym5ycm13Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDIzMDE2NzcsImV4cCI6MjAxNzg3NzY3N30.gLCP-HMKfYoWZKUPe4bMyRRYifProxRObRaNcB-X664',
  );
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

            final socket = WebSocketAutoReconnect(
              Uri.parse(
                  'wss://s.livelyoneapp.ru/api/live/nowplaying/websocket'),
            );
            
            final sharedPreferences = await SharedPreferences.getInstance();
            // FlutterError.onError =
            //     await FirebaseCrashlytics.instance.recordFlutterError;
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
                    final store = SupabaseHelper();
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
                BlocProvider<MapBloc>(create: ((context) => MapBloc(SupabaseHelper()))),
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
          //FirebaseCrashlytics.instance.recordError(error, stackTrace);
        }
      },
    );
