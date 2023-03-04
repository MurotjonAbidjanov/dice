import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    HomePage(),
  );
}

class HomePage extends StatelessWidget {
  const HomePage() : super();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DicePage(),
    );
  }
}

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lime,
      appBar: AppBar(
        backgroundColor: Colors.lime[900],
        centerTitle: true,
        title: Text(
          'Dice App',
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    'Вам выпало ${leftDiceNumber + rightDiceNumber}',
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: InkWell(
                        child: Image.asset(
                            'assets/images/dice$leftDiceNumber.png'),
                        onTap: () {
                          setState(() {
                            leftDiceNumber = Random().nextInt(6) + 1;
                            rightDiceNumber = Random().nextInt(6) + 1;
                          });
                        },
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Expanded(
                      child: InkWell(
                        child: Image.asset(
                          'assets/images/dice$rightDiceNumber.png',
                        ),
                        onTap: () {
                          setState(() {
                            leftDiceNumber = Random().nextInt(6) + 1;
                            rightDiceNumber = Random().nextInt(6) + 1;
                          });
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
