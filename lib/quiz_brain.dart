import './question.dart';

int questionNumber = 0;

class QuizBrain {
  //for encapsulation,made questionBank private by adding _
  List<Question> _questionBank = [
    Question(
      q: 'Who is the father of geometry?',
      a: ['Aristotle', 'Euclid', 'Pythagoras', 'Kepler'],
      //Correct answer Euclid
    ),
    Question(
      q: 'The radioactive element radium was invented by which of the following scientists?',
      a: [
        'Marie Curie',
        'Benjamin Franklin',
        'Albert Einstein',
        'Isaac Newton'
      ],
      //Correct answer Benjamin Franklin
    ),
    Question(
      q: 'What is the capital of India?',
      a: ['Delhi', 'Kolkata', 'Patna', 'Shimla'],
      //Correct answer Delhi
    ),
    Question(
      q: ' What type of Party system has been evolved in India?',
      a: ['Multi-Party', 'Single-Party', 'Double-Party', 'Central-Party'],
      //Correct answer Multi-Party
    ),
    Question(
      q: ' Which bank is the Banker of the Banks?',
      a: ['UBI', 'PNB', 'RBI', 'SBI'],
      //Correct answer RBI
    ),
    Question(
      q: ' Through which Translocation of food materials in plants takes place?',
      a: ['Phloem', 'Xylem', 'Carbohydras', 'Calcium'],
      //Correct answer Phloem
    ),
    Question(
      q: 'Folk painting ‘Madhu Bani’ is famous in which state?',
      a: ['Punjab', 'Uttar Pradesh', 'Bihar', 'Madhya Pradesh'],
      //Correct answer Bihar
    ),
    Question(
      q: 'Which is the tree requiring minimum water for its growth?',
      a: ['Sandal', 'Neem', 'Babul', 'Mango'],
      //Correct answer Babul
    ),
    Question(
      q: ' Which country is the largest producer of Bauxite?',
      a: ['North America', 'Australia', 'South Africa', 'India'],
      //Correct answer Australia
    ),
    Question(
      q: 'When was the Reserve Bank of India taken over by the Government?',
      a: ['1949', '1926', '1950', '1948'],
      //Correct answer 1948
    ),
  ];

  void nextQuestion() {
    if (questionNumber < _questionBank.length - 1) {
      questionNumber++;
    } else if (questionNumber == _questionBank.length - 1) {}
  }

  //also made these two functions to display answer and question
  //as we don't need questionNumber for specific question,hence removed from below 2 functions
  String getQuestionText() {
    return _questionBank[questionNumber].questionText;
  }

  List getQuestionAnswer() {
    return _questionBank[questionNumber].displayAnswer;
  }

  List<String> _answerBank = [
    'Euclid',
    'Benjamin Franklin',
    'Delhi',
    'Multi-Party',
    'RBI',
    'Phloem',
    'Bihar',
    'Babul',
    'Australia',
    '1948',
  ];
  String geCorrAns() {
    return _answerBank[questionNumber];
  }
}
