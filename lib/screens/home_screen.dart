import 'package:calculator_app/settings/app_settings.dart';
import 'package:calculator_app/util/oval_button.dart';
import 'package:calculator_app/util/rounded_button.dart';
import 'package:calculator_app/util/switch_mode.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Consumer<Settings>(
      builder: (context, settings, widget) => Scaffold(
        backgroundColor: settings.getColorSettings().calcBackgroundColor,
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(18),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // theme switch button
                SwitchMode(onTap: () => settings.toggleDarkMode()),

                // 15 pixel
                settings.verticalPadding(30),

                // results and operation display
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // result
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        '6,010',
                        style: settings.getTextStyle().resultStyle,
                      ),
                    ),

                    // operations and equal sign
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // equal
                        Text(
                          '=',
                          style: settings.getTextStyle().operationStyle,
                        ),

                        // operation
                        Text(
                          '10+500*12',
                          style: settings.getTextStyle().operationStyle,
                        ),
                      ],
                    ),

                    // 10 pixel
                    settings.verticalPadding(10),
                  ],
                ),

                // numbers and functions
                Column(
                  children: [
                    // row 6
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // => [sin]
                        OvalButton(title: 'sin'),

                        // => [,]
                        OvalButton(title: 'cos'),

                        // => [delete]
                        OvalButton(title: 'tan'),

                        // => [=]
                        OvalButton(title: '%'),
                      ],
                    ),

                    // 20 pixel
                    settings.verticalPadding(20),

                    // row 5
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // => [0]

                        RoundedButton(func: true, title: 'C'),

                        // => [,]
                        RoundedButton(title: '('),

                        // => [delete]
                        RoundedButton(title: ')'),

                        // => [=]
                        RoundedButton(func: true, title: '/'),
                      ],
                    ),

                    // 15 pixel
                    settings.verticalPadding(15),

                    // row 4
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // => [0]

                        RoundedButton(title: '7'),

                        // => [,]
                        RoundedButton(title: '8'),

                        // => [delete]
                        RoundedButton(title: '9'),

                        // => [=]
                        RoundedButton(func: true, title: 'x'),
                      ],
                    ),

                    // 15 pixel
                    settings.verticalPadding(15),

                    // row 3
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // => [0]

                        RoundedButton(title: '4'),

                        // => [,]
                        RoundedButton(title: '5'),

                        // => [delete]
                        RoundedButton(title: '6'),

                        // => [=]
                        RoundedButton(func: true, title: '-'),
                      ],
                    ),

                    // 15 pixel
                    settings.verticalPadding(15),

                    // row 2
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // => [1]
                        RoundedButton(title: '1'),

                        // => [2]
                        RoundedButton(title: '2'),

                        // => [3]
                        RoundedButton(title: '3'),

                        // => [+]
                        RoundedButton(func: true, title: '+'),
                      ],
                    ),

                    // 15 pixel
                    settings.verticalPadding(15),

                    // row 1
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        // => [0]
                        RoundedButton(title: '0'),

                        // => [,]
                        RoundedButton(title: '.'),

                        // => [delete]
                        RoundedButton(iconData: Icons.backspace_outlined),

                        // => [=]
                        RoundedButton(func: true, title: '='),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
