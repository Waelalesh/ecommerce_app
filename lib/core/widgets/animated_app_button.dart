import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AnimatedAppButton extends StatelessWidget {
  const AnimatedAppButton({
    super.key,
    required this.onPressed,
    required this.color,
    required this.height,
    required this.text,
    required this.textStyle, required this.milliSecondsDuration,
  });
  final void Function() onPressed;
  final Color color;
  final double height;
  final String text;
  final TextStyle textStyle;
  final int milliSecondsDuration; // milliseconds
  @override
  Widget build(BuildContext context) {
    return FadeInUp(
        duration: Duration(milliseconds: milliSecondsDuration),
        child: MaterialButton(
          onPressed: onPressed,
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
          height: height.h,
          child: Center(
            child: Text(
              text,
              style: textStyle,
            ),
          ),
        ));
  }
}
