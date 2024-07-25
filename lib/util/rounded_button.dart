import 'package:calculator_app/settings/app_settings.dart';
import 'package:calculator_app/util/neu_container.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RoundedButton extends StatelessWidget {
  final String? title;
  final IconData? iconData;
  final double padding;
  final bool? func;
  const RoundedButton({
    super.key,
    this.title,
    this.iconData,
    this.func,
    this.padding = 16,
  });

  @override
  Widget build(BuildContext context) {
    return Consumer<Settings>(
      builder: (context, settings, widget) => NeuContainer(
        borderRadius: BorderRadius.circular(padding * 2),
        padding: EdgeInsets.all(padding),
        child: SizedBox(
          width: padding * 2,
          height: padding * 2,
          child: Center(
            child: title == null
                ? Icon(
                    iconData,
                    color: settings.getColorSettings().funcColor,
                  )
                : Text(
                    title!,
                    style: settings.getTextStyle(func: func).roundButtonStyle,
                  ),
          ),
        ),
      ),
    );
  }
}
