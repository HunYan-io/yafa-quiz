import 'package:flutter/material.dart';
import 'package:yafa_quiz/models/question.dart';
import 'package:yafa_quiz/models/quiz.dart';
import 'package:yafa_quiz/pages/home_page.dart';
import 'package:yafa_quiz/pages/question_page.dart';
import 'package:yafa_quiz/pages/score_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _quiz = Quiz(questions: [
    Question(
      question: "Question 1",
      answers: ["Answer 1", "Answer 2", "Answer 3", "Answer 4"],
      rightAnswerIndex: 0,
    ),
    Question(
      question: "Question 2",
      answers: ["Answer 1", "Answer 2", "Answer 3", "Answer 4"],
      rightAnswerIndex: 1,
    ),
    Question(
      question: "Question 3",
      answers: ["Answer 1", "Answer 2", "Answer 3", "Answer 4"],
      rightAnswerIndex: 2,
    ),
  ]);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'YAFA Quiz',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: "/",
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/question':
            return MaterialPageRoute(
              builder: (_) => QuestionPage(
                question: _quiz.currentQuestion,
                isLastQuestion: _quiz.isLastQuestion,
                onAnswer: (index) {
                  _quiz.tryAnswer(index);
                  _quiz.next();
                },
              ),
            );
          case '/score':
            return MaterialPageRoute(
              builder: (_) => ScorePage(
                score: _quiz.score,
                max: _quiz.maxScore,
                onReplay: () {
                  _quiz.reset();
                },
              ),
            );
          default:
            return MaterialPageRoute(builder: (_) => const HomePage());
        }
      },
    );
  }
}
