import 'dart:async';
import 'package:audio_service/audio_service.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';

import 'src/common/bloc/app_bloc_observer.dart';
import 'src/feature/music/logic/my_audioplayer_handler.dart';
import 'src/my_app.dart';

late MyAudioPlayerHandler audioHandler;
void main() => runZonedGuarded<void>(
      () async {
        WidgetsFlutterBinding.ensureInitialized();
        await Firebase.initializeApp();
        SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);

        BlocOverrides.runZoned(
          () async {
            audioHandler = await AudioService.init(
              builder: () => MyAudioPlayerHandler(),
              config: const AudioServiceConfig(
                androidNotificationChannelId:
                    'com.ryanheise.myapp.channel.audio',
                androidNotificationChannelName: 'Audio playback',
                androidNotificationOngoing: true,
              ),
            );
            FlutterError.onError =
                FirebaseCrashlytics.instance.recordFlutterError;
            runApp(
              const MyApp(),
            );
          },
          blocObserver: AppBlocObserver.instance(),
        );
      },
      (error, stackTrace) {
        FirebaseCrashlytics.instance.recordError(error, stackTrace);
        print('Error is: \n $error');
        print('StackTrace is: \n $stackTrace');
      },
    );
