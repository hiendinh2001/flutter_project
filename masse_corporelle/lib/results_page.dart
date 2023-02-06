import 'package:masse_corporelle/carte_reutilisable.dart';
import 'package:masse_corporelle/constantes.dart';
import 'package:flutter/material.dart';
import 'package:masse_corporelle/bouton_inferieur.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.imcResultat,
      required this.textInterpretation,
      required this.textResultat});

  final String imcResultat;
  final String textResultat;
  final String textInterpretation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculette IMC'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Expanded(
            child: Container(
              child: Text('Votre résultat', style: kTitreTextStyle),
            ),
          ),
          Expanded(
            flex: 5,
            child: CarteReutilisable(
              couleur: kCouleurContainerActif,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    textResultat,
                    style: kResultatTextStyle,
                  ),
                  Text(
                    imcResultat,
                    style: kIMCTextStyle,
                  ),
                  Text(
                    textInterpretation,
                    textAlign: TextAlign.center,
                    style: kCorpsTextStyle,
                  ),
                ],
              ),
              onPress: () {},
            ),
          ),
          BoutonInferieur(
            titreBouton: 'RE-CALCULER',
            onAppui: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
