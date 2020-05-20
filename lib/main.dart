import 'package:basics/answer.dart';
import 'package:basics/quiz.dart';
import 'package:flutter/material.dart';
import './question.dart';
import './result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [{'text': 'black', 'score': 2}, 
                  {'text': 'red', 'score': 4}, 
                  {'text': 'green', 'score': 6}, 
                  {'text': 'white', 'score': 8}]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [{'text': 'rabbit', 'score': 2}, 
                  {'text': 'elephant', 'score': 4}, 
                  {'text': 'lion', 'score': 6}, 
                  {'text': 'buffalo', 'score': 8}]
    },
    {
      'questionText': 'What\'s your favorite food?',
      'answers': [{'text': 'burger', 'score': 2}, 
                  {'text': 'pizza', 'score': 4}, 
                  {'text': 'hotdog', 'score': 6}, 
                  {'text': 'wrap', 'score': 8}]
    }
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;
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
        body: _questionIndex < _questions.length ? 
        Quiz(answerQuestion: _answerQuestion, 
        questionIndex: _questionIndex
        questions: _questions) : 
        Result(),
      ),
    );
  }
}
