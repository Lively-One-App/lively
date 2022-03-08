import 'package:flutter/material.dart';
import 'package:lively/generated/l10n.dart';

import '/src/app_icons.dart';
import '/src/widgets/animated_background.dart';
import '/src/widgets/custom_button.dart';
import '/src/widgets/my_appbar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = S.of(context);
    final size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const Drawer(),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              AnimatedBackground(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Builder(builder: (context) {
                        return MyAppBar(
                          height: size.height * 0.07,
                          actions: [
                            IconButton(
                                color: const Color(0xFF696969),
                                onPressed: () =>
                                    Scaffold.of(context).openDrawer(),
                                icon: const Icon(AppIcons.menu)),
                            IconButton(
                              color: const Color(0xFF696969),
                              onPressed: (() {}),
                              icon: const Icon(AppIcons.question),
                            ),
                          ],
                        );
                      }),
                      _TopPart(localizations, size * 0.43),
                    ],
                  ),
                ),
              ),
            ],
          ),
          CustomButton(size: size, child: const Icon(Icons.access_alarm)),
        ],
      ),
    );
  }
}

class _TopPart extends StatelessWidget {
  const _TopPart(
    this.localizations,
    this.size, {
    Key? key,
  }) : super(key: key);

  final S localizations;
  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: size.height,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('889 ${localizations.lively}',
              style: Theme.of(context).textTheme.headline1),
          SizedBox(
            height: size.height * 0.01,
          ),
          Text(
            '${localizations.inTheStreamOf} МОСКВЫ',
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ],
      ),
    );
  }
}
