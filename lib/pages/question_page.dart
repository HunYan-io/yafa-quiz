import 'package:flutter/material.dart';
import 'package:yafa_quiz/models/question.dart';
import 'package:yafa_quiz/widgets/rounded_button.dart';

class QuestionPage extends StatelessWidget {
  final void Function(int) onAnswer;
  final Question question;
  final bool isLastQuestion;

  const QuestionPage(
      {Key? key,
      required this.question,
      required this.onAnswer,
      required this.isLastQuestion})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(question.question,
                style: Theme.of(context).textTheme.headline4),
            const SizedBox(height: 25.0),
            for (int i = 0; i < question.answers.length; i++)
              Padding(
                padding: const EdgeInsets.only(top: 25.0),
                child: RoundedButton(
                  text: question.answers[i],
                  onPressed: () {
                    onAnswer(i);
                    if (isLastQuestion) {
                      Navigator.pushNamedAndRemoveUntil(
                          context, "/score", ModalRoute.withName("/"));
                    } else {
                      Navigator.pushNamed(context, "/question");
                    }
                  },
                ),
              ),
          ],
        ),
      ),
    );
  }
}
