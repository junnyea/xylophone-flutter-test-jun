import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';
import 'package:english_words/english_words.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  static AudioCache player = AudioCache(prefix: 'assets/');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildKey(num: 1, color: Colors.red),
                buildKey(num: 2, color: Colors.green),
                buildKey(num: 3, color: Colors.blue),
                buildKey(num: 4, color: Colors.yellow),
                buildKey(num: 5, color: Colors.orange),
                buildKey(num: 6, color: Colors.purple),
                buildKey(num: 7, color: Colors.pink),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Expanded buildKey({int num, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () {
          print('Hello $num');
          final player = AudioCache();
          player.play('note$num.wav');
        },
        color: color,
        child: Text(''),
      ),
    );
  }
}
