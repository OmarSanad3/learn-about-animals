import 'package:flutter/material.dart';

class AnswerButton extends StatelessWidget {
  const AnswerButton({super.key, required this.onTab, required this.text});

  final String text;
  final void Function(String chosenAnswer) onTab;

  String capitalizeFirstLetter(String s) {
    return '${s[0].toUpperCase()}${s.substring(1).toLowerCase()}';
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        onTab(text);
      },
      child: Text(capitalizeFirstLetter(text)),
    );
  }
}
