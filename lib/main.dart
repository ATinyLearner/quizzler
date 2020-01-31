import 'package:flutter/material.dart';
import './quiz_brain.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

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
    print(correctAnswer);
    print(userPickedAnswer);
  }

  void answerQuestion(int id) {
    checkAnswer(quizBrain.getQuestionAnswer()[id]);
    setState(() {
      if (quizBrain.isFinished() == true) {
        quizBrain.reset();
        correctNum = 0;
        wrongNum = 0;
      } else {
        quizBrain.nextQuestion();
      }
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
                            child: Text(
                              quizBrain.getQuestionAnswer()[0],
                              style: TextStyle(fontSize: 25),
                            ),
                            onPressed: () => answerQuestion(0)),
                        RaisedButton(
                            child: Text(
                              quizBrain.getQuestionAnswer()[1],
                              style: TextStyle(fontSize: 25),
                            ),
                            onPressed: () => answerQuestion(1)),
                        RaisedButton(
                            child: Text(
                              quizBrain.getQuestionAnswer()[2],
                              style: TextStyle(fontSize: 25),
                            ),
                            onPressed: () => answerQuestion(2)),
                        RaisedButton(
                            child: Text(
                              quizBrain.getQuestionAnswer()[3],
                              style: TextStyle(fontSize: 25),
                            ),
                            onPressed: () => answerQuestion(3)),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
        ),
        backgroundColor: Colors.grey[900],
      ),
    );
  }
}
