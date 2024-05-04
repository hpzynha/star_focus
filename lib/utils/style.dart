import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color backgroundColor = const Color(0xFF1B1B1B);
Color buttonColor = const Color(0xFF353839);
Color textColor = const Color(0xFFFEFEFA);
Color buttonHoverColor = const Color(0xFF808080);
Color awardColor = const Color(0xFFFFD700);

// TextStyle
TextStyle textStyle(double size, [Color? color, FontWeight? fw]) {
  return GoogleFonts.nunito(
    fontSize: size,
    color: color,
    fontWeight: fw,
  );
}

// Padding
const EdgeInsets padding = EdgeInsets.all(10);

// SizedBox
const SizedBox sizedBox = SizedBox(
  height: 10,
);  

// TextField