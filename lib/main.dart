import 'package:flutter/material.dart';
import './quiz_brain.dart';

QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

int questionNum = 0;

class _MyAppState extends State<MyApp> {
  void answerQuestion() {
    setState(() {
      quizBrain.nextQuestion();
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.deepOrange,
          title: Text('Quizzler'),
        ),
        body: SafeArea(
          child: Container(
            child: Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      quizBrain.getQuestionText(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        RaisedButton(
                            child: Text(quizBrain.getQuestionAnswer()[0]),
                            onPressed: answerQuestion),
                        RaisedButton(
                            child: Text(quizBrain.getQuestionAnswer()[1]),
                            onPressed: answerQuestion),
                        RaisedButton(
                            child: Text(quizBrain.getQuestionAnswer()[2]),
                            onPressed: answerQuestion),
                        RaisedButton(
                            child: Text(quizBrain.getQuestionAnswer()[3]),
                            onPressed: answerQuestion),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
        backgroundColor: Colors.grey[900],
      ),
    );
  }
}
