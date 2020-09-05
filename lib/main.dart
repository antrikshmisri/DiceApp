import 'dart:math';
import 'package:flutter/material.dart';

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
  int leftindex = Random().nextInt(6) + 1;
  int rightindex = Random().nextInt(6) + 1;
  int  max = 6;
  void GenerateRandomNumber()
  {
    leftindex = Random().nextInt(max);
    leftindex += 1;
    rightindex = Random().nextInt(max);
    rightindex += 1;
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  GenerateRandomNumber();
                });
              },
              child: Image(
                image: AssetImage('images/dice' + leftindex.toString() + '.png'),
                //width: 140,
                //height: 140,
                color: Colors.blue[200],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 150),
            color: Colors.white38,
            width: 3,
          ),
          Expanded(
            child: FlatButton(
              onPressed: (){
                setState(() {
                  GenerateRandomNumber();
                });
              },
              child: Image(
                image: AssetImage('images/dice' + rightindex.toString() + '.png'),
                //width: 140,
                //height: 140,
                color: Colors.blue[200],
              ),
            ),
          ),
        ], //children
      ),
    );
  }
}




