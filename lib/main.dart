import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  int _questionIndex = 0;
  int _totalScore = 0;

  static const _questions = [
    {
      'questionsText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'black', 'score': 10},
        {'text': 'white', 'score': 0},
        {'text': 'red', 'score': 0},
        {'text': 'green', 'score': 0},
      ],
    },
    {
      'questionsText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'dog', 'score': 10},
        {'text': 'cat', 'score': 0},
        {'text': 'rabbit', 'score': 0},
        {'text': 'lion', 'score': 0},
      ],
    },
    {
      'questionsText': 'What\'s your favorite food?',
      'answers': [
        {'text': 'pizza', 'score': 10},
        {'text': 'burger', 'score': 0},
        {'text': 'chicken', 'score': 0},
        {'text': 'pasta', 'score': 0},
      ],
    }
  ];

  void _resetHandler() {
    setState(() {
      _totalScore = 0;
      _questionIndex = 0;
    });
  }

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      if (_questionIndex < _questions.length) {
        _questionIndex++;
      } else {
        print('No more questions');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                questionIndex: _questionIndex,
                answerQuestion: _answerQuestion,
              )
            : Result(
                resultScore: _totalScore,
                resetHandler: _resetHandler,
              ),
      ),
    );
  }
}
