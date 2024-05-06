import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
            child: textButton(
                text: 'Hold to Stop Focus', onPress: () {}, color: Colors.red),
          ),
        ),
      ]),
    );
  }

  @override
  void dispose() {
    _timer.dispose();
    super.dispose();
  }
}
