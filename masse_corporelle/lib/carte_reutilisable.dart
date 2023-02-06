import 'package:flutter/material.dart';
import 'constantes.dart';

class CarteReutilisable extends StatelessWidget {
  final Color couleur;
  final Widget cardChild;
  final VoidCallback onPress;

  CarteReutilisable(
      {required this.couleur, required this.cardChild, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: couleur,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
