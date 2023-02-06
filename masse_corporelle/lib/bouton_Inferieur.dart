import 'package:flutter/material.dart';
import 'constantes.dart';

class BoutonInferieur extends StatelessWidget {
  final VoidCallback onAppui;
  final String titreBouton;

  BoutonInferieur({required this.onAppui, required this.titreBouton});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onAppui,
      child: Container(
        child: Center(
          child: Text(
            titreBouton,
            style: kBoutonTextStyle,
          ),
        ),
        color: kCouleurContainerInferieur,
        margin: EdgeInsets.only(top: 10.0),
        padding: EdgeInsets.only(bottom: 10.0),
        width: double.infinity,
        height: kHauteurContainerInferieur,
      ),
    );
  }
}
