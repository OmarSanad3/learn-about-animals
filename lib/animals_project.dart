import 'package:animals_photos/start_button.dart';
import 'package:animals_photos/start_screen.dart';
import 'package:flutter/material.dart';

class AnimalsProject extends StatefulWidget {
  const AnimalsProject({
    super.key,
    this.beginOfGradient = Alignment.topLeft,
    this.endOfGradient = Alignment.topLeft,
    this.gradientColors = const [
      Color.fromRGBO(187, 222, 251, 1),
      Color.fromRGBO(21, 101, 192, 1)
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
  Alignment? beginOfGradient, endOfGradient;
  List<Color>? gradientColors;

  @override
  void initState() {
    beginOfGradient = widget.beginOfGradient;
    endOfGradient = widget.endOfGradient;
    gradientColors = widget.gradientColors;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
      child: const StartScreen(),
    );
  }
}
