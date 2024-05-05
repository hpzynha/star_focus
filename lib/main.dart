import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:star_focus/pages/pomodoro_page.dart';
import 'package:star_focus/services/timer_service.dart';

void main() {
  runApp(ChangeNotifierProvider<TimerService>(
    create: (_) => TimerService(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const PomodoroPage(),
    );
  }
}
