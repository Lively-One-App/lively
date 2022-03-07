import 'dart:async';

import 'package:flutter/widgets.dart';

import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'src/common/bloc/app_bloc_observer.dart';
import 'src/my_app.dart';

void main() => runZonedGuarded<void>(
      () async {
        WidgetsFlutterBinding.ensureInitialized();
        await Firebase.initializeApp();
        // SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        //   statusBarColor: Colors.transparent,
        // ));
        SystemChrome.setPreferredOrientations([DeviceOrientation.portraitDown]);
        BlocOverrides.runZoned(
          () {
            runApp(
              MultiBlocProvider(
                providers: [
                  //   BlocProvider<AuthBloc>(
                  //     create: (context) => authBloc = AuthBloc(FireAuth(), store),
                  //   ),
                ],
                child: const MyApp(),
              ),
            );
          },
          blocObserver: AppBlocObserver.instance(),
        );
      },
      (error, stackTrace) {},
    );
