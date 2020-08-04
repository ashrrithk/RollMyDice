import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.teal[500],
      appBar: AppBar(
        title:Text('Roll My Dice'),
        backgroundColor: Colors.teal[700],
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  void updateDice()
  {
    setState(() {
      leftDiceNumber = Random().nextInt(6)+1;
      rightDiceNumber = Random().nextInt(6)+1;
    });
  }
  @override
  Widget build(BuildContext context) {


    return Container(
      child: Center(
        child: Row(
          children:<Widget> [
            Expanded(
              child:FlatButton(
                onPressed: () {
                  updateDice();
                  },
                child: Image(
                  image: AssetImage('images/dice$leftDiceNumber.png'),
                ),
              ),
            ),
            Expanded(
              child:FlatButton(
                onPressed: (){
                 updateDice();
                },
                child: Image(
                  image: AssetImage('images/dice$rightDiceNumber.png'),
                ),
              ),
            ),
          ],
        ),
      ),

    );
}
}

