import 'package:basics/answer.dart';
import 'package:basics/quiz.dart';
import 'package:flutter/material.dart';
import './question.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': ['black', 'red', 'green', 'white']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['rabbit', 'elephant', 'lion', 'buffalo']
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': ['burger', 'pizza', 'hotdog', 'wrap']
    }
  ];

  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {_questionIndex = _questionIndex + 1;});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: _questionIndex < questions.length ? Quiz() : Center(child: Text('Questionaire Complete')),
      ),
    );
  }
}
