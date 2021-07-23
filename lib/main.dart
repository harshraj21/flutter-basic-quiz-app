import 'package:flutter/material.dart';

import './question.dart';
import './answerbutton.dart';
import './result.dart';

void main() => runApp(_MyApp());

class _MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<_MyApp> {
  List questions = [
    {
      'qtext': 'What is your fav. Color?',
      'answers': [
        {'text': 'Blue', 'score': 100},
        {'text': 'Red', 'score': 50},
        {'text': 'Green', 'score': 30},
        {'text': 'Black', 'score': 10}
      ],
    },
    {
      'qtext': 'Your fav. Animal?',
      'answers': [
        {'text': 'Chicken', 'score': 100},
        {'text': 'Panther', 'score': 50},
        {'text': 'Doggo', 'score': 30},
        {'text': 'Catty', 'score': 10}
      ],
    },
    {
      'qtext': 'Your fav. Food?',
      'answers': [
        {'text': 'Maggie', 'score': 100},
        {'text': 'Pasta', 'score': 50},
        {'text': 'Nodules', 'score': 30},
        {'text': 'Chilli', 'score': 10}
      ],
    },
    {
      'qtext': 'Your fav. Country?',
      'answers': [
        {'text': 'America', 'score': 100},
        {'text': 'Romania', 'score': 50},
        {'text': 'Norway', 'score': 30},
        {'text': 'India', 'score': 10}
      ],
    },
  ];

  int _ctr = 0;
  int _score = 0;

  void _answerHandler(int score) {
    this.setState(() {
      _ctr++;
    });
    _score += score;
  }

  void _resetGame() {
    this.setState(() {
      _ctr = 0;
    });
    _score = 0;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simple Quiz'),
        ),
        body: _ctr < questions.length
            ? Column(
                children: [
                  Question(questions[_ctr]['qtext']),
                  ...(questions[_ctr]['answers']).map((answer) {
                    return (AnswerButton(
                      () => _answerHandler(answer['score']),
                      answer['text'],
                    ));
                  }).toList(),
                ],
              )
            : Result(
                () => _resetGame(),
                _score,
              ),
      ),
    );
  }
}
