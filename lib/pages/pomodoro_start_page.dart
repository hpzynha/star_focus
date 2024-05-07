import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'package:star_focus/pages/pomodoro_page.dart';
import 'package:star_focus/services/timer_service.dart';
import 'package:star_focus/utils/style.dart';
import 'package:star_focus/widgets/timer_widget.dart';

import '../widgets/hold_button.dart';

class PomodoroStartPage extends StatefulWidget {
  const PomodoroStartPage({super.key});

  @override
  State<PomodoroStartPage> createState() => _PomodoroStartPageState();
}

class _PomodoroStartPageState extends State<PomodoroStartPage> {
  late TimerService _timer;
  @override
  void initState() {
    super.initState();
    _timer = Provider.of<TimerService>(context, listen: false);
    _starTimer();
  }

  void _starTimer() {
    _timer.startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Stack(children: [
        const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TimerWidget(),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: HoldingButton(
              buttonText: 'Hold to Stop Focus',
              holdDuration: const Duration(seconds: 1),
              onPressed: () {
                _timer.cancelTimer();
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: ((context) => const PomodoroPage()),
                  ),
                );
              },
              loadingIndicator: const CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
              ),
              completeIndicator: const Icon(
                Icons.check,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ]),
    );
  }

  @override
  void dispose() {
    _timer.timer.cancel();
    _timer.dispose();
    super.dispose();
  }
}
