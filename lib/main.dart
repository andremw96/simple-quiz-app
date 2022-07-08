import 'package:flutter/material.dart';
import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  void _answerQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      print(score);
      _totalScore = _totalScore + score;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  final _questions = const [
    {
      "questionText": "What's your favorite color?",
      "answers": [
        {"text": "Black", "score": 50},
        {"text": "Blue", "score": 30},
        {"text": "Green", "score": 20},
        {"text": "White", "score": 10},
      ]
    },
    {
      "questionText": "What's your favorite animal?",
      "answers": [
        {"text": "Rabbit", "score": 50},
        {"text": "Lion", "score": 30},
        {"text": "Dog", "score": 20},
        {"text": "Kangoroo", "score": 10},
      ]
    },
    {
      "questionText": "Who's your favorite instructor?",
      "answers": [
        {"text": "Max", "score": 50},
        {"text": "John", "score": 30},
        {"text": "Doe", "score": 20},
      ]
    }
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Quiz App"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(_answerQuestion, _questionIndex, _questions)
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
