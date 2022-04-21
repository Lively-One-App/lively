import 'package:flutter/material.dart';
import 'package:lively/generated/l10n.dart';
import '../../../../theme.dart';
import '../../../widgets/my_icon_button.dart';

import '/lively_icons.dart';

class BurgerMenu extends StatelessWidget {
  const BurgerMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final localizations = S.of(context);
    final theme = Theme.of(context);
    final mediaQuery = MediaQuery.of(context);

    final height = mediaQuery.size.height - mediaQuery.viewPadding.vertical;

    return Scaffold(
      backgroundColor: MyThemes.backgroundBurgerMenu,
      body: Padding(
        padding: mediaQuery.viewPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            header(context, localizations, theme.textTheme),
            SizedBox(
              height: height * 0.02,
            ),
            ListTile(
              leading: Icon(LivelyIcons.instagram),
              title: Text(
                '${localizations.instagram}',
                style: theme.textTheme.bodyText2,
              ),
              trailing: Icon(Icons.keyboard_arrow_right_outlined),
              onTap: () {},
            ),
            Divider(
              height: 1,
              indent: 70,
            ),
            ListTile(
              contentPadding: EdgeInsets.only(left: 28, right: 16),
              leading: Icon(LivelyIcons.contact),
              title: Text(
                localizations.contact,
                style: theme.textTheme.bodyText2,
              ),
              trailing: Icon(Icons.keyboard_arrow_right_rounded),
              onTap: () {},
            ),
            SizedBox(
              height: height * 0.01,
            ),
            SizedBox(
              height: height * 0.03,
            ),
            ListTile(
              leading: Icon(LivelyIcons.privacy),
              title: Text(
                localizations.privacy,
                style: theme.textTheme.bodyText2,
              ),
              trailing: Icon(Icons.keyboard_arrow_right_rounded),
              onTap: () {},
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.only(left: 28),
              child: Text(
                '${localizations.appVersion}',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
            SizedBox(
              height: height * 0.01,
            ),
            Padding(
              padding: EdgeInsets.only(left: 28),
              child: Text(
                '${localizations.design}',
                style: Theme.of(context).textTheme.headline5,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget header(BuildContext context, S localizations, TextTheme textTheme) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          AppBar(
            automaticallyImplyLeading: false,
            titleSpacing: 0,
            title: Row(
              children: [
                MyIconButton(
                  child: Icon(LivelyIcons.menu),
                  onTap: Navigator.of(context).pop,
                ),
                const Spacer(),
                MyIconButton(
                  child: Icon(LivelyIcons.question),
                  onTap: () async {},
                ),
              ],
            ),
          ),
          Text(
            '${localizations.headlineBurgerMenu}',
            style: textTheme.headline2,
          ),
          const SizedBox(height: 10),
          Text(
            '${localizations.subtitleBurgerMenu}',
            style: textTheme.subtitle2,
          ),
        ],
      ),
    );
  }
}
