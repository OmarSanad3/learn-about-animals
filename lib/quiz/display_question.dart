import 'package:animals_photos/data/all_animals_names.dart';
import 'package:animals_photos/data/paths_for_photos.dart';
import 'package:flutter/material.dart';

import 'dart:math';

final randomizer = Random();

class DisplayQuestion extends StatelessWidget {
  const DisplayQuestion({super.key, required this.questionIdx});

  final int questionIdx;

  int getRandom(int min, int max) {
    return min + randomizer.nextInt(max - min);
  }

  @override
  Widget build(BuildContext context) {
    List<String> choises = [];

    while (choises.length < 4) {}

    return Column(
      children: [
        Image.asset(
          pathsPhotos[questionIdx].path,
          width: 350,
        ),
      ],
    );
  }
}
