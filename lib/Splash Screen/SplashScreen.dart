import 'package:flutter/material.dart';
import 'package:roll_dice/DiceRoller.dart';

class SplashScreen extends StatelessWidget {
   SplashScreen({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Color(0xFF1A23D3),
            Color(0xFF3B1486),
          ])),
      child: Center(
          child: DiceRoller()),
    ));
  }
}
