import 'package:animals_photos/quiz/quiz_questions.dart';
import 'package:animals_photos/start_button.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  const ResultsScreen({
    super.key,
    required this.answers,
    required this.quizQuestions,
    required this.backToHomeScreen,
  });

  final List<String> answers;
  final List<QuizQuestions> quizQuestions;
  final void Function() backToHomeScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'You have Answered (x) correct questions out of (y) questions',
        ),
        Container(
          margin: const EdgeInsets.all(5),
          height: 500,
          child: SingleChildScrollView(
            child: ResultsBlock(),
          ),
        ),
        StartButton(
          buttonText: 'Home Screen',
          onTab: backToHomeScreen,
          buttonIcon: const Icon(Icons.home_filled),
        )
      ],
    );
  }
}
