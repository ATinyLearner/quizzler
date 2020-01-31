import 'package:flutter/material.dart';
import './quiz_brain.dart';
import 'dart:io';

QuizBrain quizBrain = QuizBrain();

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

int correctNum = 0;
int wrongNum = 0;

class _MyAppState extends State<MyApp> {
  void checkAnswer(String userPickedAnswer) {
    String correctAnswer = quizBrain.geCorrAns();
    if (correctAnswer == userPickedAnswer) {
      correctNum++;
    } else {
      wrongNum++;
    }
//    print(correctAnswer);
//    print(userPickedAnswer);
  }

  void answerQuestion(int id) {
    checkAnswer(quizBrain.getQuestionAnswer()[id]);
    setState(() {
      quizBrain.nextQuestion();
    });
  }

  void reset() {
    setState(() {
      questionNumber = 0;
      correctNum = 0;
      wrongNum = 0;
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
        body: questionNumber < 9
            ? SafeArea(
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            quizBrain.getQuestionText(),
                            style: TextStyle(
                                fontSize: 25, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Expanded(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: <Widget>[
                              RaisedButton(
                                  child: Text(
                                    quizBrain.getQuestionAnswer()[0],
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  elevation: 10,
                                  onPressed: () => answerQuestion(0)),
                              RaisedButton(
                                  child: Text(
                                    quizBrain.getQuestionAnswer()[1],
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  elevation: 10,
                                  onPressed: () => answerQuestion(1)),
                              RaisedButton(
                                  child: Text(
                                    quizBrain.getQuestionAnswer()[2],
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  elevation: 10,
                                  onPressed: () => answerQuestion(2)),
                              RaisedButton(
                                  child: Text(
                                    quizBrain.getQuestionAnswer()[3],
                                    style: TextStyle(fontSize: 25),
                                  ),
                                  elevation: 10,
                                  onPressed: () => answerQuestion(3)),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text(
                                      'Correct:$correctNum',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.green,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Text(
                                      'Wrong:$wrongNum',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.red,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            : SafeArea(
                child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    'You did it!!',
                    style: TextStyle(fontSize: 40),
                  ),
                  Text(
                    'Score:$correctNum',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      RaisedButton(
                        elevation: 10,
                        onPressed: reset,
                        child: Text('Retry'),
                      ),
                      RaisedButton(
                        elevation: 10,
                        onPressed: () => exit(0),
                        child: Text('Exit'),
                      ),
                    ],
                  ),
                ],
              )),
      ),
//        backgroundColor: Colors.grey[900],
    );
  }
}
