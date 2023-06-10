import 'package:animals_photos/data/all_animals_names.dart';
import 'package:animals_photos/data/paths_for_photos.dart';
import 'package:animals_photos/quiz/answer_button.dart';
import 'package:flutter/material.dart';

import 'dart:math';

final randomizer = Random();

class DisplayQuestion extends StatelessWidget {
  const DisplayQuestion({
    super.key,
    required this.questionIdx,
    required this.addToAnswers,
  });

  final void Function(String answer) addToAnswers;

  final int questionIdx;

  int getRandom(int min, int max) {
    return min + randomizer.nextInt(max - min);
  }

  List<String> generateChoises() {
    List<String> choises = [pathsPhotos[questionIdx].name];
    Set<String> takenIdexes = {pathsPhotos[questionIdx].name};
    int currIdx;
    while (choises.length < 4) {
      currIdx = getRandom(0, allAnimalsNames.length - 1);
      if (!takenIdexes.contains(allAnimalsNames[currIdx])) {
        takenIdexes.add(allAnimalsNames[currIdx]);
        choises.add(allAnimalsNames[currIdx]);
      }
    }

    // change the place of the first choise
    currIdx = getRandom(0, choises.length - 1);
    String s1 = choises[0];
    String s2 = choises[currIdx];
    String tmp = s1;
    s1 = s2;
    s2 = tmp;

    choises[0] = s1;
    choises[currIdx] = s2;

    return choises;
  }

  @override
  Widget build(BuildContext context) {
    List<String> choises = generateChoises();

    while (choises.length < 4) {}

    return Column(
      children: [
        const SizedBox(height: 30),
        Image.asset(
          pathsPhotos[questionIdx].path,
          width: 350,
          height: 400,
        ),
        const SizedBox(height: 30),
        for (int i = 0; i < choises.length; i++)
          AnswerButton(onTab: addToAnswers, text: choises[i]),
      ],
    );
  }
}
