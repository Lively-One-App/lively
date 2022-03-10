import 'package:flutter/material.dart';
import 'package:lively/generated/l10n.dart';
<<<<<<< HEAD
import 'package:lottie/lottie.dart';

import '/src/app_icons.dart';
import '/src/widgets/animated_background.dart';

=======

import '/src/app_icons.dart';
import '/src/widgets/animated_background.dart';
import '/src/widgets/custom_button.dart';
>>>>>>> 49ce958 (adding support  ios)
import '/src/widgets/my_appbar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = S.of(context);
<<<<<<< HEAD
    final height = MediaQuery.of(context).size.height -
        MediaQuery.of(context).viewPadding.top;
    return Scaffold(
      drawer: const Drawer(),
      body: Stack(children: [
        Column(
          children: [
            SizedBox(
              height: height * 0.5,
              child: AnimatedBackground(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: _TopPart(localizations, height: height),
                ),
              ),
            ),
          ],
        ),
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
//                                   icon: const Icon(AppIcons.menu)),
//                               IconButton(
//                                 color: const Color(0xFF696969),
//                                 onPressed: (() {}),
//                                 icon: const Icon(AppIcons.question),
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
  _TopPart(
    this.localizations, {
    required this.height,
=======
    final size = MediaQuery.of(context).size;
    return Scaffold(
      drawer: const Drawer(),
      body: Stack(
        alignment: Alignment.center,
        children: [
          Column(
            children: [
              AnimatedBackground(
                child: Column(
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
            ],
          ),
          GestureDetector(
            child:
                CustomButton(size: size, child: const Icon(Icons.access_alarm)),
          ),
        ],
      ),
    );
  }
}

class _TopPart extends StatelessWidget {
  const _TopPart(
    this.localizations,
    this.size, {
>>>>>>> 49ce958 (adding support  ios)
    Key? key,
  }) : super(key: key);

  final S localizations;
<<<<<<< HEAD
  final double height;

  @override
  Widget build(BuildContext context) {
    final colorIcon = Theme.of(context).appBarTheme.iconTheme?.color;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        MyAppBar(height: height * 0.07, actions: [
          IconButton(
              color: colorIcon,
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: const Icon(AppIcons.menu)),
          IconButton(
            color: colorIcon,
            onPressed: (() {}),
            icon: const Icon(AppIcons.question),
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
=======
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
>>>>>>> 49ce958 (adding support  ios)
    );
  }
}
