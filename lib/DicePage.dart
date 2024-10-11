import 'package:flutter/material.dart';
import 'dart:math';
class DicePage extends StatefulWidget {
  const DicePage({super.key});



  @override
  State<DicePage> createState() => _DicePageState();
}
var leftDiceNumber = 1;
var rightDiceNumber = 2;
class _DicePageState extends State<DicePage> {
  @override
  Widget build(BuildContext context) {

     void changeDiceface(){
      setState(() {
        leftDiceNumber = Random().nextInt(5)+1;
        rightDiceNumber = Random().nextInt(5)+1;

      });
    }
    return Center(
      child: Row(
        children: [
          Expanded(child: TextButton(
            
            child: Image(image: AssetImage('images/dice$leftDiceNumber.png'),            
            ),
            onPressed: (){
                // print("dice left clicked");
                changeDiceface();
              },
            ),
            
            ),


              Expanded(child: TextButton(
            
            child: Image(image: AssetImage('images/dice$rightDiceNumber.png'),            
            ),
            onPressed: (){
                // print("dice left clicked");
                changeDiceface();
              },
            ),
            
            ),

        ],
      ),
    );
  }
}