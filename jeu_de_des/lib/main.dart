import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: Text("Jeu de dés"),
        backgroundColor: Colors.red,
      ),
      body: JeuDeDes(),
    ),
  ));
}

class JeuDeDes extends StatefulWidget {
  @override
  _JeuDeDes createState() => _JeuDeDes();
}

class _JeuDeDes extends State<JeuDeDes> {
  @override
  int faceDeGauche = 1;
  int faceDeDroite = 1;
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                setState(() {
                  faceDeGauche = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset("images/dice$faceDeGauche.png"),
            ),
          ),
          Expanded(
            flex: 1,
            child: TextButton(
              onPressed: () {
                setState(() {
                  faceDeDroite = Random().nextInt(6) + 1;
                });
              },
              child: Image.asset("images/dice$faceDeDroite.png"),
            ),
          ),
        ],
      ),
    );
  }
}

// class JeuDeDes extends StatefulWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Row(
//         children: <Widget>[
//           Expanded(
//             flex: 1,
//             child: TextButton(
//               onPressed: () {
//                 print("Bouton appuyé");
//               },
//               child: Image.asset("images/dice1.png"),
//             ),
//           ),
//           Expanded(
//             flex: 1,
//             child: TextButton(child: Image.asset("images/dice1.png")),
//           ),
//         ],
//       ),
//     );
//   }
// }
