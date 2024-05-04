import 'package:flutter/material.dart';
import 'package:star_focus/utils/utils.dart';

class TimeOptions extends StatelessWidget {
  double selectedTime = 11500;

  TimeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: selectableTimes.map((time) {
          return Container(
            margin: const EdgeInsets.all(8),
            child: Text(time),
          );
        }).toList(),
      ),
    );
  }
}
