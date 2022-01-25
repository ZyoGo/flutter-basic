import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int? resultScore;

  Result({this.resultScore});

  String returnGrade() {
    late String grade;

    if (resultScore! <= 10) {
      grade = 'Your grade is C';
    } else if (resultScore! <= 20) {
      grade = 'Your grade is B';
    } else {
      grade = 'Your grade is A';
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
