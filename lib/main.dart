import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(
              child: Text(
            'Dice Rolling App',
            style: TextStyle(fontSize: 25.0),
          )),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

//DicePage Class used as Body
class DicePage extends StatefulWidget {
  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  //Variables Used for Image number.
  int leftButtonNo = 1;
  int rightButtonNo = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        //Adding Dice Images in the UI.
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    leftButtonNo = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$leftButtonNo.png')),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {
                  setState(() {
                    rightButtonNo = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset('images/dice$rightButtonNo.png')),
          ),
        ],
      ),
    );
  }
}
