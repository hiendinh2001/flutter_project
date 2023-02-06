// @dart=2.9
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/src/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int numeroSon) {
    final player = AudioCache();
    player.play('note$numeroSon.wav');
  }

  Expanded buildKey({Color couleur, int numeroSon}) {
    return Expanded(
      child: TextButton(
        style: TextButton.styleFrom(
            foregroundColor: couleur, backgroundColor: couleur),
        onPressed: () {
          playSound(numeroSon);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            buildKey(couleur: Colors.red, numeroSon: 1),
            buildKey(couleur: Colors.orange, numeroSon: 2),
            buildKey(couleur: Colors.yellow, numeroSon: 3),
            buildKey(couleur: Colors.green, numeroSon: 4),
            buildKey(couleur: Colors.blue, numeroSon: 5),
            buildKey(couleur: Colors.indigo, numeroSon: 6),
            buildKey(couleur: Colors.purple, numeroSon: 7),
          ]),
        ),
      ),
    );
  }
}
