import 'package:flutter/material.dart';
import 'package:yafa_quiz/widgets/rounded_button.dart';

class ScorePage extends StatelessWidget {
  final int score;
  final int max;
  final void Function() onReplay;
  const ScorePage(
      {Key? key,
      required this.score,
      required this.max,
      required this.onReplay})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Your Score",
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(height: 100.0),
            Text(
              "$score/$max",
              style: Theme.of(context).textTheme.headline2,
            ),
            const SizedBox(height: 100.0),
            RoundedButton(
              text: "Replay",
              fontSize: 30.0,
              onPressed: () {
                onReplay();
                Navigator.of(context).pushNamed("/question");
              },
            ),
          ],
        ),
      ),
    );
  }
}
