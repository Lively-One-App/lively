import 'package:flutter/material.dart';
import 'package:lively/generated/l10n.dart';

import '../../../../theme/burger_text.dart';
import '../../../widgets/circle_icon_button.dart';

import '/lively_icons.dart';

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
        minimum: EdgeInsets.only(top: _height * 0.06),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                AppBar(
                  leadingWidth: 30,
                  leading: CircleIconButton(
                    child: Icon(LivelyIcons.burger_menu),
                    onTap: () => Navigator.of(context).pop(),
                  ),
                  actions: [
                    CircleIconButton(
                      child: Icon(LivelyIcons.question),
                      onTap: () {},
                    )
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
            leading: Icon(LivelyIcons.instagram),
            title: Text(
              '${_localizations.instagram}',
              style: _textTheme?.bodyText1,
            ),
            trailing: Icon(Icons.keyboard_arrow_right_outlined),
            onTap: () {},
          ),
          Divider(
            height: 1,
            indent: 70,
          ),
          ListTile(
            leading: Icon(LivelyIcons.contact),
            title: Text(
              _localizations.contact,
              style: _textTheme?.bodyText1,
            ),
            trailing: Icon(Icons.keyboard_arrow_right_rounded),
            onTap: () {},
          ),
          SizedBox(
            height: _height * 0.01,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              _localizations.searchTalent,
              style: _textTheme?.subtitle1?.copyWith(fontSize: 18),
            ),
          ),
          SizedBox(
            height: _height * 0.03,
          ),
          ListTile(
            leading: Icon(LivelyIcons.privacy),
            title: Text(
              _localizations.privacy,
              style: _textTheme?.bodyText1,
            ),
            trailing: Icon(Icons.keyboard_arrow_right_rounded),
            onTap: () {},
          ),
          SizedBox(
            height: _height * 0.01,
          ),
          Padding(
              padding: EdgeInsets.only(left: 28),
              child: Text(
                '${_localizations.appVersion}',
                style: _textTheme?.subtitle2,
              )),
          SizedBox(
            height: _height * 0.01,
          ),
          Padding(
              padding: EdgeInsets.only(left: 28),
              child: Text(
                '${_localizations.design}',
                style:
                    _textTheme?.subtitle2?.copyWith(color: Color(0xFF969696)),
              )),
        ]),
      ),
    );
  }
}
