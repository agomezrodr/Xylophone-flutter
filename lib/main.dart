import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int x) {
    final player = AudioCache();
    player.play('note$x.wav');
  }

  Expanded buildKey({Color color, int x, String y}) {
    return Expanded(
      child: FlatButton(
        child: Center(
          child: Text('Touch me'),
        ),
        textColor: Colors.white,
        color: color,
        onPressed: () {
          playSound(x);
        },
      ),
    );
  }

  //Make code smaller
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: Text('Xylophone- By Adrian Gomez'),
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.blueGrey[900], x: 1),
              buildKey(color: Colors.blueGrey[800], x: 2),
              buildKey(color: Colors.blueGrey[700], x: 3),
              buildKey(color: Colors.blueGrey[600], x: 4),
              buildKey(color: Colors.blueGrey[500], x: 5),
              buildKey(color: Colors.blueGrey[400], x: 6),
              buildKey(color: Colors.blueGrey[300], x: 7),
            ],
          ),
        ),
      ),
    );
  }
}

//Expanded(
//child: FlatButton(
//color: Colors.blueGrey[900],
//onPressed: () {
//playSound(1);
//},
//),
//),
//Expanded(
//child: FlatButton(
//color: Colors.blueGrey[800],
//onPressed: () {
//playSound(2);
//},
//),
//),
//Expanded(
//child: FlatButton(
//color: Colors.blueGrey[700],
//onPressed: () {
//playSound(3);
//},
//),
//),
//Expanded(
//child: FlatButton(
//color: Colors.blueGrey[600],
//onPressed: () {
//playSound(4);
//},
//),
//),
//Expanded(
//child: FlatButton(
//color: Colors.blueGrey[500],
//onPressed: () {
//playSound(5);
//},
//),
//),
//Expanded(
//child: FlatButton(
//color: Colors.blueGrey[400],
//onPressed: () {
//playSound(6);
//},
//),
//),
//Expanded(
//child: FlatButton(
//color: Colors.blueGrey[300],
//onPressed: () {
//playSound(7);
//},
//),
//),
