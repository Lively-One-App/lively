import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({
    Key? key,
    required this.actions,
    required this.height,
  }) : super(key: key);
  final List<Widget> actions;
  final double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween, children: actions),
    );
  }
}
