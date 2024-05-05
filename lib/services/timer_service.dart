import 'dart:async';

import 'package:flutter/material.dart';

class TimerService extends ChangeNotifier {
  late Timer timer;
  double currentDuration = 1500;
  double _selectedTime = 1500;

  double get selectedTime => _selectedTime;

  set selectedTime(double seconds) {
    _selectedTime = seconds;
    currentDuration = seconds;
    notifyListeners(); // Notify listeners after updating selected time
  }
}
