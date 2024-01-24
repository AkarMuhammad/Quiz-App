import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _QuestionBank = [
    Question('A group of flamingos is called a "flamboyance."', true),
    Question('Honey never spoils or goes bad.', true),
    Question(
        'The Great Wall of China is visible from space with the naked eye.',
        false),
    Question('Bananas are berries, but strawberries aren\'t.', true),
    Question(
        'The longest time a person has ever gone without sleep is 11 days.',
        false),
    Question(
        'Cats have five toes on their front paws but only four on their back paws.',
        true),
    Question('The Eiffel Tower can be 15 cm taller during the summer.', true),
    Question(
        'A "jiffy" is an actual unit of time, equivalent to 1/100th of a second.',
        true),
    Question('Penguins are found in the Arctic.', false),
    Question('The world\'s largest desert is Antarctica.', true),
    Question('You can lead a cow down stairs but not up stairs.', false),
    Question('Approximately one quarter of human bones are in the feet.', true),
    Question('A slug\'s blood is green.', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _QuestionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _QuestionBank[_questionNumber].question;
  }

  bool getCorrectAnswer() {
    return _QuestionBank[_questionNumber].answer;
  }

  void reset() {
    _questionNumber = -1;
  }

  bool isFinished() {
    if (_questionNumber == _QuestionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }
}
