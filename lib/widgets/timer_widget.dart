import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_focus/utils/style.dart';

import '../services/timer_service.dart';

class TimerWidget extends StatelessWidget {
  const TimerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<TimerService>(context);
    int totalSeconds = provider.currentDuration.toInt();
    int minutes = totalSeconds ~/ 60;
    int seconds = totalSeconds % 60;
    String formattedMinutes = minutes.toString().padLeft(2, '0');
    String formattedSeconds = seconds.toString().padLeft(2, '0');
    String formattedTime = '$formattedMinutes:$formattedSeconds';
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          formattedTime,
          style: textStyle(96, textColor),
        ),
        const SizedBox(width: 5),
      ],
    );
  }
}
