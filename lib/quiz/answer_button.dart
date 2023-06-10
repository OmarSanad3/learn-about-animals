import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.onTab, required this.text});

  final String text;
  final void Function(String chosenAnswer) onTab;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onTab(text);
      },
      child: Text(text),
    );
  }
}
