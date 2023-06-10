import 'package:animals_photos/quiz/choose_num_questions.dart';
import 'package:animals_photos/quiz/quiz_questions.dart';
import 'package:animals_photos/results/results_screen.dart';
import 'package:animals_photos/start_screen.dart';
import 'package:animals_photos/study/study_screen.dart';
import 'package:flutter/material.dart';
import 'dart:math';

import 'data/paths_for_photos.dart';

final randomizer = Random();

class AnimalsProject extends StatefulWidget {
  const AnimalsProject({
    super.key,
    this.beginOfGradient = Alignment.topLeft,
    this.endOfGradient = Alignment.topLeft,
    this.gradientColors = const [
      Color.fromARGB(255, 128, 174, 49),
      Color.fromARGB(255, 70, 102, 29),
    ],
  });

  final Alignment beginOfGradient;
  final Alignment endOfGradient;
  final List<Color> gradientColors;

  @override
  State<AnimalsProject> createState() {
    return _AnimalsProjectState();
  }
}

class _AnimalsProjectState extends State<AnimalsProject> {
  String activeScreen = 'start-screen';
  Widget? currScreen;

  Alignment? beginOfGradient, endOfGradient;
  List<Color>? gradientColors;

  List<String> chosenAnswer = [];

  List<int> displayedQuestions = [];

  int numOfQuestion = 0, questionIdx = 0;

  @override
  void initState() {
    beginOfGradient = widget.beginOfGradient;
    endOfGradient = widget.endOfGradient;
    gradientColors = widget.gradientColors;
    super.initState();
  }

  int getRandom(int min, int max) {
    return min + randomizer.nextInt(max - min);
  }

  List<int> generateQuestions(int numQuestions) {
    int idx;
    List<int> indexesQuestions = [];
    Set<int> takenIndexes = {};
    while (indexesQuestions.length < numQuestions) {
      idx = getRandom(0, pathsPhotos.length - 1);
      if (!takenIndexes.contains(idx)) {
        takenIndexes.add(idx);
        indexesQuestions.add(idx);
      }
    }

    return indexesQuestions;
  }

  void goStudy() {
    setState(() {
      activeScreen = 'study-screen';
    });
  }

  void takeQuiz() {
    setState(() {
      activeScreen = 'quiz-screen';
    });
  }

  void chooseAnswer(String answer) {
    setState(() {
      chosenAnswer.add(answer);
      if (chosenAnswer.length == displayedQuestions.length) {
        activeScreen = 'results-screen';
        chosenAnswer.clear();
      } else {
        questionIdx++;
      }
    });
  }

  void getNumQuestion(int numQ) {
    setState(() {
      numOfQuestion = numQ;
      activeScreen = 'question-screen';
      displayedQuestions = generateQuestions(numQ);
    });
  }

  void goStartScreen() {
    setState(() {
      activeScreen = 'start-screen';
    });
  }

  @override
  Widget build(BuildContext context) {
    if (activeScreen == 'start-screen') {
      currScreen = StartScreen(
        onTabQuiz: takeQuiz,
        onTabStudy: goStudy,
      );
    }

    if (activeScreen == 'study-screen') {
      currScreen = StudyScreen(backToStartScreen: goStartScreen);
    }

    if (activeScreen == 'quiz-screen') {
      currScreen = ChooseNumQuestions(
        backToStartScreen: goStartScreen,
        getNumOfQuestions: getNumQuestion,
      );
    }

    if (activeScreen == 'question-screen') {
      currScreen = QuizQuestions(
        questionIdx: questionIdx,
        chooseAns: chooseAnswer,
      );
    }

    if (activeScreen == 'results-screen') {
      currScreen = ResultsScreen(
        answers: chosenAnswer,
        quizQuestionsIdxs: displayedQuestions,
        backToHomeScreen: goStartScreen,
      );
    }

    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors as List<Color>,
          begin: beginOfGradient as Alignment,
          end: endOfGradient as Alignment,
        ),
      ),
      child: currScreen,
    );
  }
}
