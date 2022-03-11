import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import '../generated/l10n.dart';
import '../theme.dart';
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
      initialRoute: Routes.initialRoute,
      routes: Routes.routing(),
      theme: MyThemes.lightTheme,
      home: Home(),
      // home: BlocBuilder<AuthBloc, AuthState>(
      //   builder: (BuildContext context, state) {
      //     return state.maybeWhen(
      //       authenticated: (user) => ,
      //       orElse: () =>  ,
      //     );

      //   },
      // ),
    );
  }
}
