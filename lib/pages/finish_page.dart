import 'package:flutter/material.dart';
import 'package:star_focus/utils/style.dart';

class FinishedPage extends StatelessWidget {
  const FinishedPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        children: [Text('Congratulations'), Icon(Icons.star)],
      ),
    );
  }
}
