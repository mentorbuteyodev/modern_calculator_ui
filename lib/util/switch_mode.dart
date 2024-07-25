import 'package:calculator_app/settings/app_settings.dart';
import 'package:calculator_app/util/neu_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class SwitchMode extends StatelessWidget {
  final VoidCallback onTap;
  const SwitchMode({
    super.key,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Consumer<Settings>(
        builder: (
          context,
          settings,
          widget,
        ) =>
            NeuContainer(
          padding: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 15,
          ),
          borderRadius: BorderRadius.circular(40),
          child: SizedBox(
            width: 70,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // light mode
                Icon(
                  Icons.wb_sunny,
                  color: settings.getColorSettings().switchModeColorL,
                ),

                // dark mode
                Icon(
                  Icons.nightlight_round,
                  color: settings.getColorSettings().switchModeColorD,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
