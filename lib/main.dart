import 'package:flutter/material.dart';
import 'package:hangman_game/screens/home.dart';

void main() {
  runApp(HangMan());
}

class HangMan extends StatelessWidget {
  const HangMan({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HangMan',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        backgroundColor: Colors.grey
      ),
      home: HangManHome()
    );
  }
}