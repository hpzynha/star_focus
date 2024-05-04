import 'package:flutter/material.dart';
import 'package:star_focus/utils/style.dart';
import 'package:star_focus/utils/utils.dart';
import 'package:star_focus/widgets/buttons.dart';
import 'package:star_focus/widgets/time_options.dart';

class SelectTimePage extends StatefulWidget {
  const SelectTimePage({super.key});

  @override
  State<SelectTimePage> createState() => _SelectTimePageState();
}

class _SelectTimePageState extends State<SelectTimePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Icon(
              Icons.star_outline,
              size: 50,
              color: awardColor,
            ),
          ),
          const SizedBox(height: 30),
          TimeOptions(),
          const SizedBox(height: 30),
          boxButton(
            text: 'Done',
            onPress: () {
              Navigator.pop(context, selectableTimes);
            },
          ),
        ],
      ),
    );
  }
}
