import 'package:flutter/material.dart';
import 'package:yafa_quiz/widgets/rounded_button.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "It's Quiz Time",
              style: Theme.of(context).textTheme.headline3,
            ),
            const SizedBox(height: 100.0),
            RoundedButton(
              text: "Start!",
              fontSize: 30.0,
              onPressed: () {
                Navigator.of(context).pushNamed("/question");
              },
            ),
          ],
        ),
      ),
    );
  }
}
