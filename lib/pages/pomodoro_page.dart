import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_focus/pages/finish_page.dart';
import 'package:star_focus/pages/pomodoro_start_page.dart';
import 'package:star_focus/pages/select_time_page.dart';
import 'package:star_focus/services/timer_service.dart';
import 'package:star_focus/utils/style.dart';
import 'package:star_focus/widgets/buttons.dart';
import 'package:star_focus/widgets/timer_widget.dart';

class PomodoroPage extends StatefulWidget {
  const PomodoroPage({super.key});

  @override
  State<PomodoroPage> createState() => _PomodoroPageState();
}

class _PomodoroPageState extends State<PomodoroPage> {
  void startTimer() {
    final timerService = Provider.of<TimerService>(context, listen: false);
    timerService.startTimer();
  }

  void navigateToFinishedPage() {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => const FinishedPage()),
    );
  }

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
                child: const TimerWidget()),
            const SizedBox(height: 20),
            boxButton(
              text: 'Start Focus',
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const PomodoroStartPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
