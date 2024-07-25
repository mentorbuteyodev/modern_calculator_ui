import 'package:calculator_app/settings/app_settings.dart';
import 'package:calculator_app/util/neu_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class OvalButton extends StatelessWidget {
  final String title;
  final double padding;
  const OvalButton({
    super.key,
    required this.title,
    this.padding = 17,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<Settings>(
      builder: (context, settings, widget) => NeuContainer(
        borderRadius: BorderRadius.circular(50),
        padding:
            EdgeInsets.symmetric(horizontal: padding, vertical: padding / 2),
        child: SizedBox(
          width: padding * 2,
          child: Center(
            child: Text(
              title,
              style: settings.getTextStyle().ovalButtonStyle,
            ),
          ),
        ),
      ),
    );
  }
}
