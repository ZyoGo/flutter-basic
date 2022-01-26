import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final VoidCallback actionButton;
  final String text;

  AnswerButton(this.actionButton, this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      // width: double.infinity,
      child: ElevatedButton(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
        onPressed: actionButton,
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            Colors.black,
          ),
        ),
      ),
    );
  }
}
