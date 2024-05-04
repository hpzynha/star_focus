import 'package:flutter/material.dart';
import 'package:star_focus/utils/style.dart';

class Timer extends StatelessWidget {
  final String minutes;
  final String seconds;
  const Timer({super.key, required this.minutes, required this.seconds});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          '${minutes.isNotEmpty ? minutes : '25'}:${seconds.isNotEmpty ? seconds : '00'}',
          style: textStyle(96, textColor),
        ),
        const SizedBox(width: 5),
      ],
    );
  }
}
