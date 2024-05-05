import 'package:flutter/material.dart';
import 'package:star_focus/utils/style.dart';

class Timer extends StatelessWidget {
  final String timer;

  const Timer({super.key, required this.timer});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          timer,
          style: textStyle(96, textColor),
        ),
        const SizedBox(width: 5),
      ],
    );
  }
}
