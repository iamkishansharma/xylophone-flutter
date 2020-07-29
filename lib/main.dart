import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNo) {
    final player = AudioCache();
    player.play('note$soundNo.wav');
  }

  Widget buildButton(
    Color color,
    int number,
  ) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(number);
        },
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildButton(Colors.amber, 1),
              buildButton(Colors.red, 2),
              buildButton(Colors.cyan, 3),
              buildButton(Colors.purple.shade200, 4),
              buildButton(Colors.orange, 5),
              buildButton(Colors.pink, 6),
              buildButton(Colors.lime, 7),
            ],
          ),
        ),
      ),
    );
  }
}
