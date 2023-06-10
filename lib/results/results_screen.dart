import 'package:animals_photos/data/paths_for_photos.dart';
import 'package:animals_photos/modules/photos_paths.dart';
import 'package:animals_photos/results/results_block.dart';
import 'package:animals_photos/start_button.dart';
import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  ResultsScreen({
    super.key,
    required this.answers,
    required this.quizQuestionsIdxs,
    required this.backToHomeScreen,
  });

  final List<String> answers;
  final List<int> quizQuestionsIdxs;
  List<PhotoPath> quizQuestions = [];
  final void Function() backToHomeScreen;

  List<Map<String, Object>> getSummaryData() {
    for (int i = 0; i < quizQuestionsIdxs.length; i++) {
      quizQuestions.add(pathsPhotos[quizQuestionsIdxs[i]]);
    }
    List<Map<String, Object>> theSummary = [];
    for (int i = 0; i < answers.length; i++) {
      theSummary.add({
        'index': i,
        'photo': quizQuestions[i].path,
        'correct-answer': quizQuestions[i].name,
        'user-answer': answers[i],
      });
    }
    return theSummary;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> summaryData = getSummaryData();

    int correctAnswerCount = 0, totalNumberOfQuestions = summaryData.length;
    for (int i = 0; i < summaryData.length; i++) {
      if (summaryData[i]['correct-answer'] == summaryData[i]['user-answer']) {
        correctAnswerCount++;
      }
    }

    return Column(
      children: [
        Container(
          margin:
              const EdgeInsets.only(top: 50, bottom: 30, left: 10, right: 10),
          child: Text(
            'You have Answered $correctAnswerCount correct questions out of $totalNumberOfQuestions questions',
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(5),
          height: 500,
          child: SingleChildScrollView(
            child: ResultsBlock(summary: summaryData),
          ),
        ),
        const SizedBox(height: 30),
        StartButton(
          buttonText: 'Home Screen',
          onTab: backToHomeScreen,
          buttonIcon: const Icon(Icons.home_filled),
        )
      ],
    );
  }
}
