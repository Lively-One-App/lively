import 'package:flutter/material.dart';

class AdaptiveText extends StatelessWidget {
  const AdaptiveText({Key? key, this.width, this.height, required this.text})
      : super(key: key);
  final double? width;
  final double? height;
  final Text text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: FittedBox(child: text),
    );
  }
}
