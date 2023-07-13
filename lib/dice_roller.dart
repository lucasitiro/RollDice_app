import 'dart:math';
import 'package:flutter/material.dart';

final randomizer = Random();

class DiceRoller extends StatefulWidget{
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState(){
    return _DiceRollerState ();
  }
}

class _DiceRollerState extends State<DiceRoller>{
  
  var currentDiceRoll = randomizer.nextInt(6)+1;
  void rollDice (){ 
    setState((){
      currentDiceRoll =  randomizer.nextInt(6)+1; //0<>6;
      
    });
    
    
  }
  @override
  Widget build(context){
    return Column(
          mainAxisSize: MainAxisSize.min, //centraliza verticalmente
          children: [
          Image.asset(
            'assets/images/dice-$currentDiceRoll.png',
            width: 200,
          ),
          const SizedBox(height: 20,), //espaço entre a imagem e o textbuttom
          TextButton(
            onPressed: rollDice,
            style: TextButton.styleFrom(
              // padding: const EdgeInsets.only(
              //   top: 20),
              foregroundColor: Colors.white,
              textStyle: const TextStyle(
                fontSize: 28,
              )),
            child: const  Text('Roll dice'))
        ]);
  }
}