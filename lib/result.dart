import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;
  
  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) { resultText = 'You are awesome'; } 
    else if (resultScore <= 12) { resultText = 'You are alright'; } 
    else if (resultScore <= 16) { resultText = 'You are not okay'; } 
    else { resultText = 'Just leave man'; }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
          children: <Widget>[
            Text(resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
      ),
      FlatButton(child: Text('Restart Quiz'),
                textColor: Colors.blue,
                onPressed: resetHandler,
      ),
          ],
        ),
    );
  }
}