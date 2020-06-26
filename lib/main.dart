import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playsound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey(Color color, int soundNumber, String note) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playsound(soundNumber);
        },
        child: Text(note),
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
              buildKey(Colors.red, 1, 'C'),
              buildKey(Colors.orange, 2, 'D'),
              buildKey(Colors.yellow, 3, 'E'),
              buildKey(Colors.green, 4, 'F'),
              buildKey(Colors.teal, 5, 'G'),
              buildKey(Colors.blue, 6, 'A'),
              buildKey(Colors.purple, 7, 'B'),
            ],
          ),
        ),
      ),
    );
  }
}
