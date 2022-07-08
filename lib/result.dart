import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function retryClick;

  Result(this.resultScore, this.retryClick);

  String get resultPhrase {
    var resultText = "you did it!";
    if (resultScore <= 80) {
      resultText = "you are awesome";
    } else if (resultScore <= 90) {
      resultText = "pretty good";
    } else if (resultScore <= 110) {
      resultText = "weird";
    } else {
      resultText = "so bad LUL";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        Text(
          resultPhrase,
          style: TextStyle(
            fontSize: 36,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        RaisedButton(
          onPressed: retryClick,
          child: Text("Retry"),
        )
      ],
    ));
  }
}
