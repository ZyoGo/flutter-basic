import 'package:flutter/material.dart';

import './question.dart';
import './button.dart';

class Quiz extends StatelessWidget {
  final List<Map<String, dynamic>> questions;
  final int questionIndex;
  final Function answerQuestion;

  Quiz({
    required this.questions,
    required this.questionIndex,
    required this.answerQuestion,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(
          questions[questionIndex]['questionsText'],
        ),
        ...(questions[questionIndex]['answers'] as List<Map<String, Object>>)
            .map((answer) {
          return AnswerButton(() => answerQuestion(answer['score'] as int),
              answer['text'] as String);
        }).toList()
      ],
    );
  }
}
