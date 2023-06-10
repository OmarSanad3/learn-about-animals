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
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 7),
      child: ElevatedButton(
        onPressed: () {
          onTab(text);
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.green.shade300,
          foregroundColor: const Color.fromARGB(255, 11, 84, 202),
        ),
        child: Text(
          capitalizeFirstLetter(text),
          style: const TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
