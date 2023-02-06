import 'question.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class ToutesQuestions {
  int _numeroQuestion = 0;
  //final : la variable ne changera pas après initialisation
  final List<Question> _questionList = [
    Question(t: "Flutter uses native components for building UI", r: false),
    Question(
        t: "Flutter's widgets are designed to be fast and highly customizable",
        r: true),
    Question(
        t: "Flutter requires less code than native app development.", r: true),
    Question(
        t: "Flutter does not provide any libraries for accessing device features like camera, GPS, etc.",
        r: false),
    Question(
        t: "Flutter has a single codebase that can be used for both Android and iOS app development.",
        r: true),
    Question(t: "Flutter does not have a stateful widget concept.", r: false),
    Question(
        t: "Flutter's hot reload feature is not useful for developers during the development process.",
        r: false),
    Question(
        t: "Flutter does not support integration with third-party APIs and services.",
        r: false),
    Question(
        t: "Flutter's widgets are not optimized for performance.", r: false),
    Question(
        t: "Flutter is not suitable for high-performance, graphically rich app development.",
        r: false),
  ];

  void prochaineQuestion() {
    if (_numeroQuestion < _questionList.length - 1) {
      _numeroQuestion++;
    }
  }

  String getQuestion() {
    return _questionList[_numeroQuestion].questionTexte!;
  }

  bool getReponse() {
    return _questionList[_numeroQuestion].questionReponse!;
  }
}
