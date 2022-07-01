import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
  }

  var questions = [
    "what's your favorite color?",
    "what's your favorite animal?"
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My Quiz App"),
        ),
        body: Column(children: [
          Text(questions[questionIndex]),
          RaisedButton(
            child: Text("Answer 1"),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text("Answer 2"),
            onPressed: answerQuestion,
          ),
          RaisedButton(
            child: Text("Answer 3"),
            onPressed: answerQuestion,
          ),
        ]),
      ),
    );
  }
}
