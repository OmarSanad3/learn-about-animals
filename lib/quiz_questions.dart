import 'package:animals_photos/quiz/display_question.dart';
import 'package:flutter/material.dart';

class QuizQuestions extends StatelessWidget {
  const QuizQuestions({
    super.key,
    required this.chooseAns,
    required this.questionIdx,
  });

  final int questionIdx;
  final void Function(String answer) chooseAns;

  @override
  Widget build(BuildContext context) {
    return DisplayQuestion(questionIdx: questionIdx, addToAnswers: chooseAns);
  }
}
