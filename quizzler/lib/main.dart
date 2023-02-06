import 'package:flutter/material.dart';
import 'quizzler.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

ToutesQuestions toutesQuestions = ToutesQuestions();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black87,
          appBar: AppBar(
            title: const Text('Quizzler'),
            //actions: <Widget>[
            //TextButton(
            //   onPressed: () {},
            //  child:
            //     const Text('Action 1', style: TextStyle(color: Colors.white)),
            //),
            //IconButton(
            //    icon: const Icon(Icons.share),
            //   tooltip: 'Partager votre résultat !',
            //  onPressed: () {})
            //],
            backgroundColor: Colors.black87,
          ),
          body: SafeArea(
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10.0),
                  child: QuizPage())),
        ));
  }
}

class QuizPage extends StatefulWidget {
  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> compteurPoints = []; //liste vide
  int numeroQuestion = 0;
  void verifieReponse(bool reponseUtilisateur) {
    bool reponseCorrecte = toutesQuestions.getReponse();
//The user picked true.
    setState(() {
      if (reponseCorrecte == reponseUtilisateur) {
        print('Right answer');
        compteurPoints.add(
          Icon(
            Icons.check,
            color: Colors.green,
          ),
        );
      } else {
        print('Wrong answer');
        compteurPoints.add(
          Icon(
            Icons.close,
            color: Colors.red,
          ),
        );
      }
      toutesQuestions.prochaineQuestion();
    });
    if (compteurPoints.length > 9) {
      Alert(
              context: context,
              title: "Error",
              desc: "You have already answered all 10 questions.")
          .show();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 5,
          child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(toutesQuestions.getQuestion(),
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                      fontSize: 25.0,
                      color: Colors.white,
                    )),
              )),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.green)),
              child: const Text('True',
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
              onPressed: () {
                verifieReponse(true);
              },
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextButton(
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.red)),
              child: const Text('False',
                  style: TextStyle(color: Colors.white, fontSize: 20.0)),
              onPressed: () {
                verifieReponse(false);
              },
            ),
          ),
        ),
        Row(
          children: compteurPoints,
        ),
      ],
    );
  }
}
