import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  final Function myfunc;
  final String btntxt;
  AnswerButton(this.myfunc, this.btntxt);
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: RaisedButton(
        child: Text(
          btntxt,
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        color: Colors.blue,
        onPressed: () => myfunc(),
      ),
    );
  }
}
