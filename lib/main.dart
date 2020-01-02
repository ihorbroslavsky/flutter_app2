import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(MaterialApp(
  home: Home(),
));

Color _mainColor = Colors.green;

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List<Color> colorsList = [
      Colors.green,
      Colors.grey,
      Colors.lightBlue,
      Colors.amber,
      Colors.pink
    ];

    int randColor;
    void getRandomColor() {
      Random randInt = Random();
      randColor = randInt.nextInt(5);
    }

    return Material(
      child: InkWell(
        onTap: () {
          getRandomColor();
          _mainColor = colorsList[randColor];
          main();
        }, // handle your onTap here
        child: Center(
          child: Text(
            'Hello there',
            style: TextStyle (
              fontSize: 35.0,
              fontWeight: FontWeight.bold,
              letterSpacing: 2.0,
              color: Colors.white,
            ),
            ),
        ),
      ),
      color: _mainColor,
    );
  }
}
