import 'package:flutter/material.dart';
import 'package:three_monkeys/ui/onboarding/OnBoarding.dart';
import 'package:three_monkeys/ui/theme/light_theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightMode,
      home: const Onboarding()
    );
  }
}

