import 'package:flutter/material.dart';

class GetColorSettings {
  // background color
  final Color calcBackgroundColor;

  // dark shadow
  final Color darkShadow;

  // light shadow
  final Color lightShadow;

  // function button color
  final Color funcColor;

  // number button color
  final Color numColor;

  // result text color
  final Color resultColor;

  // operation text color
  final Color operationColor;

  // light switch mode color
  final Color switchModeColorL;

  // dark switch mode color
  final Color switchModeColorD;

  // constructor for GetColorSettings
  const GetColorSettings({
    required this.calcBackgroundColor,
    required this.darkShadow,
    required this.lightShadow,
    required this.funcColor,
    required this.numColor,
    required this.resultColor,
    required this.operationColor,
    required this.switchModeColorL,
    required this.switchModeColorD,
  });
}
