import 'package:flutter/material.dart';
import 'package:lively/generated/l10n.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../theme/burger_text.dart';
import '../../../widgets/circle_icon_button.dart';

import '/lively_icons.dart';
import 'onboarding/onboarding.dart';

class BurgerMenu extends StatelessWidget {
  const BurgerMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final double _height = MediaQuery.of(context).size.height;
    final S _localizations = S.of(context);
    final _textTheme = Theme.of(context).extension<BurgerText>()?.textTheme;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        minimum: EdgeInsets.only(top: _height * 0.07),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppBar(
                    leadingWidth: 30,
                    leading: CircleIconButton(
                      child: const Icon(LivelyIcons.burger_menu),
                      onTap: () => Navigator.of(context).pop(),
                    ),
                    actions: [
                      CircleIconButton(
                          child: const Icon(LivelyIcons.question),
                          onTap: () => showDialog(
                              useSafeArea: false,
                              context: context,
                              builder: (context) => const OnBoarding()))
                    ],
                  ),
                  Text('${_localizations.headlineBurgerMenu}',
                      style: _textTheme?.headline1),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('${_localizations.subtitleBurgerMenu}',
                      style: _textTheme?.subtitle1),
                ],
              ),
            ),
            SizedBox(
              height: _height * 0.02,
            ),
            ListTile(
              leading: const Icon(LivelyIcons.instagram),
              title: Text(
                '${_localizations.instagram}',
                style: _textTheme?.bodyText1,
              ),
              trailing: const Icon(Icons.keyboard_arrow_right_outlined),
              onTap: () async {
                final url =
                    Uri.parse('https://www.instagram.com/livelyoneapp/');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
            ),
            const Divider(
              height: 1,
              indent: 70,
            ),
            ListTile(
              leading: const Icon(
                LivelyIcons.telegram,
                size: 24,
              ),
              title: Text(
                '${_localizations.telegram}',
                style: _textTheme?.bodyText1,
              ),
              trailing: const Icon(Icons.keyboard_arrow_right_outlined),
              onTap: () async {
                final url =
                    Uri(scheme: 'https', host: 't.me', path: 'livelyoneapp/');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url, mode: LaunchMode.externalApplication);
                } else {
                  throw 'Could not launch $url';
                }
              },
            ),
            const Divider(
              height: 1,
              indent: 70,
            ),
            ListTile(
              leading: const Icon(LivelyIcons.contact),
              title: Text(
                _localizations.contact,
                style: _textTheme?.bodyText1,
              ),
              trailing: const Icon(Icons.keyboard_arrow_right_rounded),
              onTap: () async {
                final url = Uri.parse(
                    'https://livelyoneapp.ru/become-part-of-the-project/');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url, mode: LaunchMode.externalApplication);
                } else {
                  throw 'Could not launch $url';
                }
              },
            ),
            SizedBox(
              height: _height * 0.01,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                _localizations.searchTalent,
                style: _textTheme?.subtitle1
                    ?.copyWith(fontSize: 18, letterSpacing: -0.36),
              ),
            ),
            SizedBox(
              height: _height * 0.03,
            ),
            ListTile(
              leading: const Icon(LivelyIcons.privacy),
              title: Text(
                _localizations.privacy,
                style: _textTheme?.bodyText1,
              ),
              trailing: const Icon(Icons.keyboard_arrow_right_rounded),
              onTap: () async {
                final url =
                    Uri.parse('https://livelyoneapp.ru/private-police/');
                if (await canLaunchUrl(url)) {
                  await launchUrl(url);
                } else {
                  throw 'Could not launch $url';
                }
              },
            ),
            SizedBox(
              height: _height * 0.01,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  '${_localizations.appVersion}',
                  style: _textTheme?.subtitle2,
                )),
            // SizedBox(
            //   height: _height * 0.01,
            // ),
            // Padding(
            //   padding: const EdgeInsets.only(left: 28),
            //   child: Text(
            //     '${_localizations.design}',
            //     style: _textTheme?.subtitle2
            //         ?.copyWith(color: const Color(0xFF969696)),
            //   ),
            // )
          ]),
        ),
      ),
    );
  }
}
