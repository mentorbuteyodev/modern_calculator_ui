import 'package:calculator_app/settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NeuContainer extends StatefulWidget {
  final Widget? child;
  final BorderRadius? borderRadius;
  final EdgeInsetsGeometry? padding;

  const NeuContainer({
    super.key,
    this.child,
    this.borderRadius,
    this.padding,
  });

  @override
  State<NeuContainer> createState() => _NeuContainerState();
}

class _NeuContainerState extends State<NeuContainer> {
  // is button pressed
  bool _isPressed = false;

  // on pointer down
  //- when the button is pressed
  void _onPointerDown(PointerDownEvent event) {
    setState(() {
      _isPressed = true;
    });
  }

  // on pointer up
  //- when the pressed button is released
  void _onPointerUp(PointerUpEvent event) {
    setState(() {
      _isPressed = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Listener(
      onPointerDown: _onPointerDown,
      onPointerUp: _onPointerUp,
      child: Consumer<Settings>(
        builder: (context, settings, widgets) => Container(
          padding: widget.padding,
          decoration: BoxDecoration(
            color: settings.getColorSettings().calcBackgroundColor,
            borderRadius: BorderRadius.circular(12),
            boxShadow: _isPressed
                ? null
                : [
                    // blueGray shadow
                    BoxShadow(
                      color: settings.getColorSettings().darkShadow,
                      offset: const Offset(
                        4.0,
                        4.0,
                      ),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),

                    // white shadow
                    BoxShadow(
                      color: settings.getColorSettings().lightShadow,
                      offset: const Offset(
                        -4.0,
                        -4.0,
                      ),
                      blurRadius: 15.0,
                      spreadRadius: 1.0,
                    ),
                  ],
          ),
          child: widget.child,
        ),
      ),
    );
  }
}
