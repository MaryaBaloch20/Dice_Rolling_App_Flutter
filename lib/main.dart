import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: const Center(child: Text('Dicee')),
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
    return Center(
      child: Row(
        //Adding Dice Images in the UI.
        children: [
          Expanded(
            child: TextButton(
                onPressed: () {}, child: Image.asset('images/dice1.png')),
          ),
          Expanded(
            child: TextButton(
                onPressed: () {}, child: Image.asset('images/dice1.png')),
          ),
        ],
      ),
    );
  }
}
