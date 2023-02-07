import 'dart:math';

class LogiqueImc {
  final int hauteur;
  final double poids;
  double _imc = 0.0; //variable private

  LogiqueImc({required this.hauteur, required this.poids});

  String calculIMC() {
    // imc = kg / (metres^2)
    _imc = poids / pow(hauteur / 100, 2);
    return _imc.toStringAsFixed(1);
  }

  String getResultat() {
    if (_imc >= 25.0) {
      return 'Surpoids';
    } else if (_imc > 18.5) {
      return 'Normal';
    } else {
      return 'Sous poids';
    }
  }

  String getInterpretation() {
    if (_imc >= 25.0) {
      return 'Faites plus d\'exercices !';
    } else if (_imc > 18.5) {
      return 'Super !';
    } else {
      return 'Mangez un peu plus !';
    }
  }
}
