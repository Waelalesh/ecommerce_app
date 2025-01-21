import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';

class AnimatedAppTextButton extends StatelessWidget {
  const AnimatedAppTextButton(
      {super.key,
      required this.text,
      required this.textStyle,
      required this.milliSecondsDuration, required this.onPressed});
  final String text;
  final TextStyle textStyle;
  final int milliSecondsDuration; // milliseconds
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return FadeInUp(
        duration: Duration(milliseconds: milliSecondsDuration),
        child: Center(
            child: TextButton(
                onPressed: onPressed, child: Text(text, style: textStyle))));
  }
}
