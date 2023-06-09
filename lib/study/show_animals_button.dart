import 'package:flutter/material.dart';

class ShowAnimalsButton extends StatelessWidget {
  const ShowAnimalsButton({super.key, required this.onTab, required this.text});
  final void Function(String newAnimal) onTab;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 50, bottom: 20, left: 5, right: 5),
      child: OutlinedButton(
        onPressed: () {
          onTab(text.toLowerCase());
        },
        style: OutlinedButton.styleFrom(
          foregroundColor: Colors.yellow,
          textStyle: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
        child: Text(text),
      ),
    );
  }
}
