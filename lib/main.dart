import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final player = AudioCache();
    void playSound(int number) {
      player.play('note$number.wav');
    }

    Expanded buildKey({number, color}) {
      return Expanded(
        child: FlatButton(
          onPressed: () {
            playSound(number);
          },
          color: color,
        ),
      );
    }

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildKey(number: 1, color: Colors.purple),
            buildKey(number: 2, color: Colors.pink),
            buildKey(number: 3, color: Colors.deepOrangeAccent),
            buildKey(number: 4, color: Colors.yellowAccent),
            buildKey(number: 5, color: Colors.lightBlue),
            buildKey(number: 6, color: Colors.tealAccent),
            buildKey(number: 7, color: Colors.amber),
          ],
        )),
      ),
    );
  }
}
