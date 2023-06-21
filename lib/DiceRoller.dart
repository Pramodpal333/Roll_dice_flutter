import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

var random = Random();
class DiceRoller extends StatefulWidget{

  @override
  State<DiceRoller> createState(){
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  int  currentNum = 1;


  @override
  Widget build(context){
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          "assets/images/dice-$currentNum.png",
          width: 200,
        ),
        const SizedBox(height: 25,),
        TextButton(
            onPressed: rollDice,
            child: Container(
              // margin: const EdgeInsets.symmetric(vertical: 25, ),
                padding: const EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                decoration:  BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8)
                ),
                child: const Text("Roll Dice",style: TextStyle(color: Colors.black),))),
      ],
    );
  }
  void rollDice() {
    setState(() {
      currentNum = random.nextInt(6) +1;
      print("$currentNum current num");
    });
  }
}