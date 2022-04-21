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
    final double _height = MediaQuery.of(context).size.height;
    final S _localizations = S.of(context);
    final _textTheme =
        Theme.of(context).textTheme.merge(MyThemes.burgerTextTheme);
    return Scaffold(
      backgroundColor: MyThemes.bugerBackgroundColor,
      body: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        header(_height, _localizations, _textTheme),
        SizedBox(
          height: _height * 0.02,
        ),
        ListTile(
          leading: Icon(LivelyIcons.instagram),
          title: Text(
            '${_localizations.instagram}',
            style: _textTheme.bodyText1,
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
            _localizations.contact,
            style: _textTheme.bodyText1,
          ),
          trailing: Icon(Icons.keyboard_arrow_right_rounded),
          onTap: () {},
        ),
        SizedBox(
          height: _height * 0.01,
        ),
        SizedBox(
          height: _height * 0.03,
        ),
        ListTile(
          leading: Icon(LivelyIcons.privacy),
          title: Text(
            _localizations.privacy,
            style: _textTheme.bodyText1,
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
              style: _textTheme.subtitle2,
            )),
        SizedBox(
          height: _height * 0.01,
        ),
        Padding(
            padding: EdgeInsets.only(left: 28),
            child: Text(
              '${_localizations.design}',
              style: _textTheme.subtitle2?.copyWith(color: Color(0xFF969696)),
            )),
      ]),
    );
  }

  Widget header(double height, S localizations, TextTheme textTheme) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          AppBar(
            leading: MyIconButton(child: Icon(LivelyIcons.menu)),
            actions: [
              MyIconButton(
                child: Icon(LivelyIcons.question),
                onTap: () async {},
              )
            ],
          ),
          Text('${localizations.headlineBurgerMenu}',
              style: textTheme.headline1),
          const SizedBox(
            height: 10,
          ),
          Text('${localizations.subtitleBurgerMenu}',
              style: textTheme.subtitle1),
        ],
      ),
    );
  }
}
