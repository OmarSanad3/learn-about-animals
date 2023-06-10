import 'package:animals_photos/modules/photos_paths.dart';
import 'package:animals_photos/quiz/display_question.dart';
import 'package:flutter/material.dart';

class QuizQuestions extends StatelessWidget {
  const QuizQuestions(
      {super.key, required this.chooseAns, required this.displayedQuestion});

  final PhotoPath displayedQuestion;

  final void Function(String answer) chooseAns;

  @override
  Widget build(BuildContext context) {
    return DisplayQuestion(
      displayedQuestion: displayedQuestion,
      addToAnswers: chooseAns,
    );
  }
}
