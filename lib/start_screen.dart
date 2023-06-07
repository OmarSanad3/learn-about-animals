import 'package:animals_photos/start_button.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        StartButton(
          buttonText: 'Study!',
          onTab: () {},
          buttonIcon: const Icon(Icons.menu_book_sharp),
        ),
        StartButton(
          buttonText: 'Start Quiz!',
          onTab: () {},
          buttonIcon: const Icon(Icons.keyboard_arrow_right),
        ),
      ],
    );
  }
}
