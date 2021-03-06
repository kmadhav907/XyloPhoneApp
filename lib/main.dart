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

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
            child: Column(
          children: [
            FlatButton(
                onPressed: () {
                  playSound(1);
                },
                color: Colors.pink,
                child: Text("SA")),
            FlatButton(
              onPressed: () {
                playSound(2);
              },
              child: Text("RE"),
              color: Colors.red,
            ),
            FlatButton(
              onPressed: () {
                playSound(3);
              },
              child: Text("GA"),
              color: Colors.yellowAccent,
            ),
            FlatButton(
              onPressed: () {
                playSound(4);
              },
              child: Text("MA"),
              color: Colors.green,
            ),
            FlatButton(
              onPressed: () {
                playSound(5);
              },
              child: Text("PA"),
              color: Colors.blue,
            ),
            FlatButton(
              onPressed: () {
                playSound(6);
              },
              child: Text("DA"),
              color: Colors.deepOrangeAccent,
            ),
            FlatButton(
              onPressed: () {
                playSound(7);
              },
              child: Text("NI"),
              color: Colors.purple,
            )
          ],
        )),
      ),
    );
  }
}
