import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_focus/services/timer_service.dart';
import 'package:star_focus/utils/style.dart';
import 'package:star_focus/widgets/timer_widget.dart';

import '../widgets/buttons.dart';

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
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 15),
            GestureDetector(onTap: () {}, child: const TimerWidget()),
            const SizedBox(height: 20),
            boxButton(text: 'Hold to Stop Focus', onPress: () {}),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _timer.dispose();
    super.dispose();
  }
}
