import 'package:flutter/material.dart';

import 'package:animals_photos/choose_animal.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {super.key,
      this.gradientColors = const [
        Color.fromRGBO(187, 222, 251, 1),
        Color.fromRGBO(21, 101, 192, 1)
      ],
      this.beginOfGradient = Alignment.topLeft,
      this.endOfGradient = Alignment.topLeft});

  final List<Color> gradientColors;
  final Alignment beginOfGradient;
  final Alignment endOfGradient;

  @override
  Widget build(context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: gradientColors,
          begin: beginOfGradient,
          end: endOfGradient,
        ),
      ),
      child: const Center(
        child: ChooseAnimal(),
      ),
    );
  }
}
