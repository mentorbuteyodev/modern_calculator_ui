import 'package:calculator_app/models/get_color_settings.dart';
import 'package:calculator_app/models/get_text_style.dart';
import 'package:calculator_app/models/theme.dart';
import 'package:flutter/material.dart';

class Settings extends ChangeNotifier {
  // define color mode
  static bool _darkMode = true;

  // get darkMode
  static bool get darkMode => _darkMode;

  // light theme
  final CalculatorTheme _lightTheme = CalculatorTheme(
    colorDark: const Color(0xff374352),
    colorLight: const Color(0xffe6eeff),
    primary: Colors.black54,
    secondary: Colors.redAccent,
    accentColor: Colors.blueGrey.shade200,
    accentColorOne: Colors.white,
    accentColorTwo: Colors.grey,
  );

  // dark theme
  final CalculatorTheme _darkTheme = CalculatorTheme(
    colorLight: const Color(0xffe6eeff),
    colorDark: const Color(0xff374352),
    primary: Colors.blueGrey.shade200,
    secondary: Colors.green,
    accentColor: Colors.blueGrey.shade700,
    accentColorOne: Colors.black54,
    accentColorTwo: Colors.grey,
  );

  // toggle btw light and dark mode
  // call getColorSettings
  void toggleDarkMode() {
    // toggle btw light and dark mode
    _darkMode ? _darkMode = false : _darkMode = true;

    // get color settings
    getColorSettings();

    // notify listeners (widget) of changes in data
    notifyListeners();
  }

  // define different color settings
  GetColorSettings getColorSettings() {
    return GetColorSettings(
      // app background color
      calcBackgroundColor:
          _darkMode ? _darkTheme.colorDark : _lightTheme.colorLight,

      // dark mode buttons shadow color
      darkShadow:
          _darkMode ? _darkTheme.accentColorOne : _lightTheme.accentColor,

      // light mode buttons shadow color
      lightShadow:
          _darkMode ? _darkTheme.accentColor : _lightTheme.accentColorOne,

      // function buttons color
      funcColor: _darkMode ? _darkTheme.secondary : _lightTheme.secondary,

      // number buttons color
      numColor: _darkMode ? _darkTheme.primary : _lightTheme.primary,

      // results text color
      resultColor: _darkMode ? _darkTheme.primary : _lightTheme.secondary,

      // operation button color
      operationColor:
          _darkMode ? _darkTheme.secondary : _lightTheme.accentColorTwo,

      // switch mode button color for light mode
      switchModeColorL:
          _darkMode ? _darkTheme.accentColorTwo : _lightTheme.secondary,

      // switch mode button color for dark mode
      switchModeColorD:
          _darkMode ? _darkTheme.secondary : _lightTheme.accentColorTwo,
    );
  }

  // vertical padding
  Widget verticalPadding(double h) => SizedBox(
        height: h,
      );

  // horizontal padding
  Widget horizontalPadding(double w) => SizedBox(
        width: w,
      );

  // define different text style settings
  GetTextStyle getTextStyle({bool? func}) => GetTextStyle(
        // rounded button text style
        roundButtonStyle: TextStyle(
          height: 0,
          fontSize: 30,
          fontWeight: FontWeight.w600,
          color: !(func == null)
              ? getColorSettings().funcColor
              : getColorSettings().numColor,
        ),

        // oval button text style
        ovalButtonStyle: TextStyle(
          height: 0,
          fontSize: 15,
          fontWeight: FontWeight.w600,
          color: !(func == null)
              ? getColorSettings().funcColor
              : getColorSettings().numColor,
        ),

        // result text style
        resultStyle: TextStyle(
          fontSize: 55,
          fontWeight: FontWeight.bold,
          color: getColorSettings().resultColor,
        ),

        // operation text style
        operationStyle: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.normal,
          color: getColorSettings().operationColor,
        ),
      );
}
