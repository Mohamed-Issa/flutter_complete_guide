import 'package:flutter/material.dart';
import 'package:fluttercompleteguide/Quiz.dart';
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
  var _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'what\'s your favourite color?',
      'answer': [
        {'text': 'white', 'score': 1},
        {'text': 'black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'blue', 'score': 8}
      ]
    },
    {
      'questionText': 'what\'s your favourite animal?',
      'answer': [
        {'text': 'Rabbit', 'score': 1},
        {'text': 'snake', 'score': 8},
        {'text': 'Lion', 'score': 7},
        {'text': 'Elephant', 'score': 2}
      ]
    },
    {
      'questionText': 'what\'s your favourite instructor?',
      'answer': [
        {'text': 'mohamed', 'score': 1},
        {'text': 'mohamed', 'score': 1},
        {'text': 'mohamed', 'score': 1},
        {'text': 'mohamed', 'score': 1}
      ]
    },
  ];
  int _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My first App'),
        ),
        body: (_questionIndex < _questions.length)
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
