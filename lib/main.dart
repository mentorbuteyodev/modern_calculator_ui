import 'package:calculator_app/screens/home_screen.dart';
import 'package:calculator_app/settings/app_settings.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        // prover for settings
        ChangeNotifierProvider(
          create: (context) => Settings(),
        ),
      ],
      child:  const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Calculator Neumorphism',
      home: HomeScreen(),
    ),
    );
  }
}
