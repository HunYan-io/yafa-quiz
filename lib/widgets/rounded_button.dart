import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String text;
  final double fontSize;
  final void Function() onPressed;
  const RoundedButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.fontSize = 24.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: fontSize,
        ),
      ),
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(fontSize * 30.0 / 24.0),
          ),
        ),
        padding: MaterialStateProperty.all(
          EdgeInsets.all(fontSize * 18.0 / 24.0),
        ),
      ),
    );
  }
}
