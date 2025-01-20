import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class AnimatedAppText extends StatelessWidget {
  const AnimatedAppText(
      {super.key,
      required this.milliSecondsDuration,
      required this.text,
      required this.textStyle});
  final int milliSecondsDuration;
  final String text;
  final TextStyle textStyle;
  @override
  Widget build(BuildContext context) {
    return FadeInUp(
      duration: Duration(milliseconds: milliSecondsDuration),
      child: Text(text, style: textStyle),
    );
  }
}
