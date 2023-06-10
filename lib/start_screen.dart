import 'package:animals_photos/start_button.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({
    super.key,
    required this.onTabQuiz,
    required this.onTabStudy,
  });

  final void Function() onTabStudy, onTabQuiz;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/animals_images/animals_start_screen.jpg',
        ),
        const SizedBox(height: 100),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            StartButton(
              buttonText: 'Study!',
              onTab: onTabStudy,
              buttonIcon: const Icon(Icons.menu_book_sharp),
            ),
            StartButton(
              buttonText: 'Start Quiz!',
              onTab: onTabQuiz,
              buttonIcon: const Icon(Icons.keyboard_arrow_right),
            ),
          ],
        ),
      ],
    );
  }
}
