import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_focus/services/timer_service.dart';
import 'package:star_focus/utils/style.dart';
import 'package:star_focus/utils/utils.dart';

class TimeOptions extends StatelessWidget {
  const TimeOptions({super.key});

  @override
  Widget build(BuildContext context) {
    Provider.of<TimerService>(context, listen: false);
    return Consumer<TimerService>(builder: (context, provider, _) {
      return SingleChildScrollView(
        controller: ScrollController(initialScrollOffset: 155),
        scrollDirection: Axis.horizontal,
        child: Row(
          children: selectableTimes.map((time) {
            return InkWell(
              onTap: () {
                double selectedSeconds = double.parse(time);
                provider.selectedTime = selectedSeconds;
              },
              child: Container(
                margin: const EdgeInsets.only(left: 10),
                width: 70,
                height: 50,
                child: Center(
                    child: Text(
                  (int.parse(time) ~/ 60).toString(),
                  style: textStyle(
                    35,
                    double.parse(time) == provider.selectedTime
                        ? awardColor
                        : textColor,
                  ),
                )),
              ),
            );
          }).toList(),
        ),
      );
    });
  }
}
