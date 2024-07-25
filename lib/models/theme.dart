import 'package:flutter/material.dart';

class CalculatorTheme {
  // main dark theme
  final Color colorDark;
  // main light theme
  final Color colorLight;

  // primary color
  final Color primary;

  // secondary color
  final Color secondary;

  // First accent color
  final Color accentColor;

  // second accent color
  final Color accentColorOne;

  // third accent color
  final Color accentColorTwo;

  // constructor for CalculatorTheme
  const CalculatorTheme({
    required this.colorDark,
    required this.colorLight,
    required this.primary,
    required this.secondary,
    required this.accentColor,
    required this.accentColorOne,
    required this.accentColorTwo,
  });
}
