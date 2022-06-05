import 'package:flutter/material.dart';

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
class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var leftButtonNo = 5;
    var rightButtonNo = 6;

    return Center(
      child: Row(
        //Adding Dice Images in the UI.
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {},
                child: Image.asset('images/dice$leftButtonNo.png')),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {},
                child: Image.asset('images/dice$rightButtonNo.png')),
          ),
        ],
      ),
    );
  }
}
