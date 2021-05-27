import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}
class DicePage extends StatefulWidget {


  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Row(
            children: [
              Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Image.asset('images/dice$leftDiceNumber.png'),
                  )
              ),
              Expanded(child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Image.asset('images/dice$rightDiceNumber.png'),
              )
              )

            ],
          ),
        ),
        Container(
          margin :EdgeInsets.only(top:100.0),
          child: ElevatedButton(
            onPressed: (){
              setState(() {
                leftDiceNumber = Random().nextInt(6)+1;
                rightDiceNumber = Random().nextInt(6)+1;
              });
            },
            child: Text('Roll',
              style: TextStyle(
                fontSize: 20.0,
                color: Colors.black,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Colors.white,
            ),),
          width: 100.0,
          height: 50.0,

        )

      ],

    );
  }
}

