import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(
        title: Text("Je suis pauvre"),
        backgroundColor: Colors.pink[900],
      ),
      backgroundColor: Colors.green,
      body: Center(
        child: Image(
          image: AssetImage('images/jesuispauvre.png'),
        ),
      ),
    ),
  ));
}
