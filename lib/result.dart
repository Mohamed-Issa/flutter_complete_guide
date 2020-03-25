import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int _totalResult;
  final Function resetQuiz;

  Result(this._totalResult, this.resetQuiz);

  String get resultPhrase {
    String resultText;
    if (_totalResult <= 8) {
      resultText = 'your are awesome and innocent';
    } else if (_totalResult <= 12) {
      resultText = 'pretty likeable';
    } else if (_totalResult <= 16) {
      resultText = 'you are.. strange';
    } else {
      resultText = 'you are so bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),
          FlatButton(
            textColor: Colors.blue,
            child: Text(
              'Restart Quiz',
              style: TextStyle(
                fontSize: 20,
              ),
            ),
            onPressed: resetQuiz,
          )
        ],
      ),
    );
  }
}
