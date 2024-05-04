import 'package:flutter/material.dart';
import 'package:star_focus/utils/style.dart';
import 'package:star_focus/widgets/buttons.dart';
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
            const Timer(),
            const SizedBox(height: 20),
            boxButton(text: 'Start Focus', onPress: () {}),
          ],
        ),
      ),
    );
  }
}
