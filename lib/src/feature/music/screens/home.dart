import 'package:flutter/material.dart';
import 'package:lively/generated/l10n.dart';
import 'package:lottie/lottie.dart';

import '/lively_icons.dart';
import '/src/widgets/custom_button.dart';
import '/src/widgets/animated_background.dart';

import '/src/widgets/my_appbar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = S.of(context);
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: const Drawer(),
      body: Stack(children: [
        Column(
          children: [
            _TopPart(localizations, height: height),
            const _BottomPart()
          ],
        ),
        Padding(
            padding: EdgeInsets.only(top: height * 0.1),
            child: CustomButton(
                radius: width / 2,
                onTap: () {
                  print("ghjhj");
                }))
      ]),
    );
  }
}
// class Home extends StatelessWidget {
//   const Home({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     final localizations = S.of(context);

//     final width = MediaQuery.of(context).size.width;
//     final height = MediaQuery.of(context).size.height -
//         MediaQuery.of(context).viewPadding.top;

//     return Scaffold(
//       drawer: const Drawer(),
//       body: Stack(
//         alignment: Alignment.center,
//         children: [
//           Column(
//             children: [
//               AnimatedBackground(
//                 child: SafeArea(
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(horizontal: 16.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Builder(builder: (context) {
//                           return MyAppBar(
//                             height: height * 0.07,
//                             actions: [
//                               IconButton(
//                                   color: const Color(0xFF696969),
//                                   onPressed: () =>
//                                       Scaffold.of(context).openDrawer(),
//                                   icon: const Icon(LivelyIcons.menu)),
//                               IconButton(
//                                 color: const Color(0xFF696969),
//                                 onPressed: (() {}),
//                                 icon: const Icon(LivelyIcons.question),
//                               ),
//                             ],
//                           );
//                         }),
//                         _TopPart(localizations, height: height * 0.5),
//                       ],
//                     ),
//                   ),
//                 ),
//               ),
//             ],
//           ),
//           Material(
//               child: InkWell(
//                   onTap: () {},
//                   child: Lottie.asset('animations_lottie/play_button.json'))),
//         ],
//       ),
//     );
//   }
// }

class _TopPart extends StatelessWidget {
  const _TopPart(
    this.localizations, {
    required this.height,
    Key? key,
  }) : super(key: key);

  final S localizations;
  final double height;

  @override
  Widget build(BuildContext context) {
    final colorIcon = Theme.of(context).appBarTheme.iconTheme?.color;
    return SizedBox(
        height: height * 0.55,
        child: AnimatedBackground(
            child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyAppBar(height: height * 0.07, actions: [
                      IconButton(
                          color: colorIcon,
                          onPressed: () => Scaffold.of(context).openDrawer(),
                          icon: const Icon(
                            LivelyIcons.menu,
                            size: 15,
                          )),
                      IconButton(
                        color: colorIcon,
                        onPressed: (() {}),
                        icon: const Icon(LivelyIcons.question),
                      ),
                    ]),
                    Text('889 ${localizations.lively}',
                        style: Theme.of(context).textTheme.headline1),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Text(
                      '${localizations.inTheStreamOf} ',
                      style: Theme.of(context).textTheme.subtitle1,
                    )
                  ],
                ))));
  }
}

class _BottomPart extends StatelessWidget {
  const _BottomPart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SafeArea(
        top: false,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Icon(
              LivelyIcons.heart,
              size: 50,
            ),
            Text(
              S.of(context).changeTheGame,
              style: Theme.of(context).textTheme.bodyText1,
            ),
          ],
        ),
      ),
    );
  }
}
