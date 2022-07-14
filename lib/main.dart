import 'dart:async';
import 'package:audio_service/audio_service.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter/services.dart';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_crashlytics/firebase_crashlytics.dart';
import 'package:l/l.dart';

import 'src/common/bloc/app_bloc_observer.dart';
import 'src/feature/music/bloc/azuracast/azuracast_cubit.dart';
import 'src/feature/music/bloc/likes/likes_cubit.dart';
import 'src/feature/music/bloc/radio/radio_cubit.dart';
import 'src/feature/music/logic/firestore.dart';
import 'src/feature/music/logic/my_audioplayer_handler.dart';
import 'src/my_app.dart';

//late MyAudioPlayerHandler audioHandler;
void main() => runZonedGuarded<void>(
      () async {
        WidgetsFlutterBinding.ensureInitialized();
        await Firebase.initializeApp();
        SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
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
            FlutterError.onError =
                FirebaseCrashlytics.instance.recordFlutterError;
            runApp(MultiBlocProvider(
              providers: [
                BlocProvider<AzuraCastCubit>(
                  create: (context) {
                    const azuraRadio =
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
