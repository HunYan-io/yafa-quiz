import 'package:yafa_quiz/models/question.dart';

class Quiz {
  final List<Question> _questions;
  int _index;
  int _score;

  Quiz({required questions, index = 0, score = 0})
      : _questions = questions,
        _index = index,
        _score = score;

  void reset() {
    _index = 0;
    _score = 0;
  }

  void next() {
    _index++;
  }

  void tryAnswer(index) {
    if (index == _questions[_index].rightAnswerIndex) {
      _score++;
    }
  }

  bool get isLastQuestion {
    return _index == _questions.length - 1;
  }

  int get score {
    return _score;
  }

  int get maxScore {
    return _questions.length;
  }

  Question get currentQuestion {
    return _questions[_index];
  }
}
