import 'package:flutter/material.dart';

import './question.dart';
import './button.dart';

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
  // String _title = 'value will be set';
  // String? _name;

  List<String> _questions = [
    'What\'s your favorite color?',
    'What\'s your favorite animal?',
  ];

  void _answerQuestion() {
    setState(() {
      if (_questionIndex < _questions.length - 1) {
        _questionIndex++;
      } else {
        _questionIndex = 0;
      }
    });
    print(_questions[_questionIndex]);
  }

  // void _getName() {
  //   setState(() {
  //     _title = _name!;
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: Column(
          children: [
            Question(_questions[_questionIndex]),
            AnswerButton(_answerQuestion, 'Answer 1'),
            AnswerButton(_answerQuestion, 'Answer 1'),
            AnswerButton(_answerQuestion, 'Answer 1'),
            // Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            //   child: TextField(
            //     // onChanged: (value) => _name = value,
            //     decoration: InputDecoration(
            //       border: OutlineInputBorder(),
            //       labelText: 'Enter your name',
            //     ),
            //   ),
            // ),
            // ElevatedButton(
            //   onPressed: () {
            //     _getName();
            //   },
            //   child: Text('Submit'),
            // ),
            // Text(
            //   _title,
            //   style: TextStyle(fontSize: 20),
            // ),
          ],
        ),
      ),
    );
  }
}
