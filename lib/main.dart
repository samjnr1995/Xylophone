import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int SoundNumber) {
    final player = AudioCache();
     player.play('note$SoundNumber.wav');
  }

  Expanded buildKey({required Color color, required int SoundNumber}) {
    return Expanded(
      flex: 1,
      child: ElevatedButton(
        onPressed: () {
          playSound(SoundNumber);
        },
        style: ElevatedButton.styleFrom(
          primary: color,
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
        ),
        child: Text('Click me'),
      ),
    );
  }

  AudioPlayer player = AudioPlayer();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //backgroundColor: Colors.black87,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.red, SoundNumber: 1),
              SizedBox(height: 4),
              buildKey(color: Colors.blue, SoundNumber: 2),
              SizedBox(height: 4),
              buildKey(color: Colors.green, SoundNumber: 3),
              SizedBox(height: 4),
              buildKey(color: Colors.orange, SoundNumber: 4),
              SizedBox(height: 4),
              buildKey(color: Colors.yellow, SoundNumber: 5),
              SizedBox(height: 4),
              buildKey(color: Colors.pink, SoundNumber: 6),
              SizedBox(height: 4),
              buildKey(color: Colors.brown, SoundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
