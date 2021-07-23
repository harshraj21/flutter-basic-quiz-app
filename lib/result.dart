import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final Function playagain;
  final int score;
  Result(
    this.playagain,
    this.score,
  );
  String getmsg() {
    String resultxt = 'Finished The Game :)';
    if (score > 390) {
      resultxt = 'You are Brilliant';
    } else if (score > 290) {
      resultxt = 'You are Awosum';
    } else if (score > 190) {
      resultxt = 'You are Good';
    } else if (score > 90) {
      resultxt = 'You are Average';
    } else {
      resultxt = 'You are Bad';
    }
    return resultxt;
  }

  // String get result {
  //   String resultxt = 'Finished The Game :)';
  //   if (score > 390) {
  //     resultxt = 'You are Brilliant';
  //   } else if (score > 290) {
  //     resultxt = 'You are Awosum';
  //   } else if (score > 190) {
  //     resultxt = 'You are Good';
  //   } else if (score > 90) {
  //     resultxt = 'You are Average';
  //   } else {
  //     resultxt = 'You are Bad';
  //   }
  //   return resultxt;
  // }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          children: [
            Text(
              getmsg(),
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            RaisedButton(
              child: Text(
                'Play Again',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () => playagain(),
              color: Colors.blue,
            ),
          ],
        ),
      ),
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(5),
    );
  }
}
