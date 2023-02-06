import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueAccent.shade700,
        appBar: AppBar(
          title: Text(
            "Ask me Anything",
            style: TextStyle(
              fontSize: 36.0,
            ),
          ),
          backgroundColor: Colors.blueAccent,
        ),
        body: MagicBall(),
      ),
    ),
  );
}

class MagicBall extends StatefulWidget {
  @override
  _MagicBall createState() => _MagicBall();
}

class _MagicBall extends State<MagicBall> {
  @override
  int face = 1;
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                setState(
                  () {
                    face = Random().nextInt(5) + 1;
                  },
                );
              },
              child: Image.asset("images/ball$face.png"),
            ),
          ),
        ],
      ),
    );
  }
}
