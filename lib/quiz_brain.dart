import './question.dart';

int questionNumber;

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
      a: ['South Africa', 'North America', 'Australia', 'India'],
      //Correct answer Australia
    ),
    Question(
      q: 'When was the Reserve Bank of India taken over by the Government?',
      a: ['1949', '1926', '1948', '1950'],
      //Correct answer 1948
    ),
  ];
  //also made these two functions to display answer and question

  String getQuestionText(questionNumber) {
    return _questionBank[questionNumber].questionText;
  }

  List getQuestionAnswer(questionNumber) {
    return _questionBank[questionNumber].displayAnswer;
  }
}
