import 'package:flutter/material.dart';
import 'package:star_focus/pages/select_time_page.dart';
import 'package:star_focus/utils/style.dart';
import 'package:star_focus/widgets/buttons.dart';
import 'package:star_focus/widgets/time_options.dart';
import 'package:star_focus/widgets/timer.dart';

class PomodoroPage extends StatefulWidget {
  const PomodoroPage({super.key});

  @override
  State<PomodoroPage> createState() => _PomodoroPageState();
}

class _PomodoroPageState extends State<PomodoroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 15),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SelectTimePage()));
                },
                child: const Timer(
                  timer: '25:00',
                )),
            const SizedBox(height: 20),
            const TimeOptions(),
            const SizedBox(height: 20),
            boxButton(text: 'Start Focus', onPress: () {}),
          ],
        ),
      ),
    );
  }
}
