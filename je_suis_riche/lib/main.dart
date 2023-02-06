import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Je suis riche"),
        backgroundColor: Colors.blueGrey[900],
      ),
      backgroundColor: Colors.blueGrey,
      body: Center(
        child: Image(
          image: AssetImage('images/onering.png'),
        ),
      ),
    ),
  ));
}
