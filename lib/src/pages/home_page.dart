import 'package:flutter/material.dart';
import 'package:lively/generated/l10n.dart';
import 'package:lively/src/app_icons.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const Drawer(),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            _AppBar(),
            _TopText(),
          ],
        ),
      ),
    );
  }
}

class _AppBar extends StatelessWidget {
  const _AppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: Scaffold.of(context).openDrawer,
            padding: const EdgeInsets.all(16),
            iconSize: 28,
            color: const Color(0xFF696969),
            icon: const Icon(AppIcons.menu),
          ),
          IconButton(
            onPressed: () {},
            padding: const EdgeInsets.all(16),
            iconSize: 28,
            color: const Color(0xFF696969),
            icon: const Icon(AppIcons.question),
          ),
        ],
      ),
    );
  }
}

class _TopText extends StatelessWidget {
  const _TopText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = S.of(context);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '889 ${localizations.lively}',
            style: const TextStyle(
              color: Color(0xFFF64B4B),
              fontFamily: 'Muller',
              fontSize: 38,
              letterSpacing: 0.2,
              fontWeight: FontWeight.w800,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            '${localizations.inTheStreamOf} МОСКВЫ',
            style: const TextStyle(
              color: Color(0xFF474747),
              fontFamily: 'Muller',
              fontSize: 14,
              letterSpacing: 0.7,
              fontWeight: FontWeight.w800,
            ),
          ),
        ],
      ),
    );
  }
}
