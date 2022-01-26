import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int? resultScore;

  Result({this.resultScore});

  String returnGrade() {
    late String grade;

    if (resultScore! <= 10) {
      grade = 'Your grade is C with a score of $resultScore';
    } else if (resultScore! <= 20) {
      grade = 'Your grade is B with a score of $resultScore';
    } else {
      grade = 'Your grade is A with a score of $resultScore';
    }

    return grade;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(returnGrade()),
    );
  }
}
