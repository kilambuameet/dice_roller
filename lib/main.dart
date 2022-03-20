import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dice Roller',
      home: const DiceRoller(),
    ));

class DiceRoller extends StatefulWidget {
  const DiceRoller({Key? key}) : super(key: key);

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  // ignore: non_constant_identifier_names
  int Number = 1;

  changeNumber() {
    setState(() {
      Number =  Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dice Roller'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Column(children: [
        const SizedBox(
          height: 40,
        ),
        Center(
            child: Image.asset(
          'assets/$Number.jpg',
          height: 250,
          width: 250,
        )),
        MaterialButton(
          onPressed: changeNumber,
          color: Colors.red,
          child: const Text(
            "ROLL",
            style: const TextStyle(color: Colors.white),
          ),
        ),
      ]),
    );
  }
}
