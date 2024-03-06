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
      backgroundColor: Theme.of(context).colorScheme.background,
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
                      child:  Icon(
                        LivelyIcons.menu,
                        size: MediaQuery.of(context).size.height / 27,
                      ),
                      onTap: () => Navigator.of(context).pop(),
                    ),
                    actions: [
                      CircleIconButton(
                          child:  Icon(LivelyIcons.question, size: MediaQuery.of(context).size.height / 27,),
                          onTap: () => showDialog(
                              useSafeArea: false,
                              context: context,
                              builder: (context) => const OnBoarding()))
                    ],
                  ),
                  Text('${_localizations.headlineBurgerMenu}',
                      style: _textTheme?.displayLarge),
                  const SizedBox(
                    height: 10,
                  ),
                  Text('${_localizations.subtitleBurgerMenu}',
                      style: _textTheme?.titleMedium),
                ],
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            const Divider(height: 1, indent: 1),
            MyListTile(
              icon: const Icon(LivelyIcons.instagram),
              text: '${_localizations.instagram}',
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
              height: 0,
              indent: 55,
            ),
            MyListTile(
              icon: const Icon(
                LivelyIcons.telegram,
                size: 24,
              ),
              text: '${_localizations.telegram}',
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
              height: 0,
              indent: 55,
            ),
            MyListTile(
              icon: const Icon(LivelyIcons.contact),
              text: _localizations.contact,
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
            const Divider(
              height: 0,
              indent: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                _localizations.searchTalent,
                style: _textTheme?.titleMedium
                    ?.copyWith(fontSize: 18, letterSpacing: -0.36),
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            const Divider(
              height: 0,
              indent: 1,
            ),
            MyListTile(
              icon: const Icon(LivelyIcons.privacy),
              text: _localizations.privacy,
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
            const Divider(
              height: 0,
              indent: 1,
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Text(
                  '${_localizations.appVersion}',
                  style: _textTheme?.titleSmall,
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

class MyListTile extends StatelessWidget {
  const MyListTile(
      {Key? key, this.onTap, required this.text, required this.icon})
      : super(key: key);

  final void Function()? onTap;
  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    final _textTheme = Theme.of(context).extension<BurgerText>()?.textTheme;

    return ListTile(
        leading: icon,
        title: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: Text(
            text,
            style: _textTheme?.bodyLarge,
          ),
        ),
        trailing: const Icon(
          Icons.keyboard_arrow_right_outlined,
          size: 25,
        ),
        onTap: onTap);
  }
}
