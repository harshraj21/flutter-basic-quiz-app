import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  final String question;

  Question(this.question);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(
          question,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
    );
  }
}
