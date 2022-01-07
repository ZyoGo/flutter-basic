import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final actionButton;
  final String text;

  AnswerButton(this.actionButton, this.text);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text(text),
      onPressed: actionButton,
    );
  }
}
