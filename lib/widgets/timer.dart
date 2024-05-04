import 'package:flutter/material.dart';
import 'package:star_focus/utils/style.dart';

class Timer extends StatelessWidget {
  const Timer({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '25',
          style: textStyle(96, textColor),
        ),
        const SizedBox(width: 5),
        Text(
          ":",
          style: textStyle(96, textColor),
        ),
        const SizedBox(width: 5),
        Text(
          '00',
          style: textStyle(96, textColor),
        ),
      ],
    );
  }
}
