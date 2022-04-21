import 'dart:async';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio_background/just_audio_background.dart';

import 'src/common/bloc/app_bloc_observer.dart';
import 'src/my_app.dart';

void main() => runZonedGuarded<void>(
      () async {
        WidgetsFlutterBinding.ensureInitialized();
        await Firebase.initializeApp();
        SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
        await JustAudioBackground.init(
          androidNotificationChannelId: 'com.ryanheise.bg_demo.channel.audio',
          androidNotificationChannelName: 'Audio playback',
          androidNotificationOngoing: true,
        );
        BlocOverrides.runZoned(
          () {
            runApp(
              const MyApp(),
            );
          },
          blocObserver: AppBlocObserver.instance(),
        );
      },
      (error, stackTrace) {
        print('Error is: \n $error');
        print('StackTrace is: \n $stackTrace');
      },
    );
