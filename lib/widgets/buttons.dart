import 'package:flutter/material.dart';
import 'package:star_focus/utils/style.dart';

Widget boxButton({
  required String text,
  required Function() onPress,
}) {
  return OutlinedButton(
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(buttonColor),
        overlayColor: MaterialStateProperty.all(buttonHoverColor),
        side: MaterialStateProperty.all(BorderSide.none),
      ),
      onPressed: onPress,
      child: Text(
        text,
        style: textStyle(24, textColor),
      ));
}

Widget textButton({
  required String text,
  required Function() onPress,
  required Color color,
}) {
  return TextButton(
    onPressed: onPress,
    style: ButtonStyle(
      overlayColor: MaterialStateProperty.resolveWith<Color>(
        (states) {
          return buttonColor
              .withOpacity(0.1); // Set overlay color to transparent
        },
      ),
    ),
    child: Text(
      text,
      style: TextStyle(color: color, fontSize: 16),
    ),
  );
}
