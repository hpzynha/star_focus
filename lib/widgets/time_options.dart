import 'package:flutter/material.dart';
import 'package:star_focus/utils/style.dart';
import 'package:star_focus/utils/utils.dart';

class TimeOptions extends StatelessWidget {
  double selectedTime = 1500;

  TimeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: ScrollController(initialScrollOffset: 155),
      scrollDirection: Axis.horizontal,
      child: Row(
        children: selectableTimes.map((time) {
          return Container(
            margin: const EdgeInsets.only(left: 10),
            width: 70,
            height: 50,
            child: Center(
                child: Text(
              (int.parse(time) ~/ 60).toString(),
              style: textStyle(
                  35, int.parse(time) == selectedTime ? awardColor : textColor),
            )),
          );
        }).toList(),
      ),
    );
  }
}
