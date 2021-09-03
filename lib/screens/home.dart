import 'package:flutter/material.dart';
import 'package:hangman_game/screens/splash_screen.dart';

class HangManHome extends StatelessWidget {
  const HangManHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SplashScreen()
    );
  }
}
