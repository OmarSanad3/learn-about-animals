import 'package:animals_photos/data/photos_by_key.dart';
import 'package:animals_photos/start_button.dart';
import 'package:animals_photos/study/button_class.dart';
import 'package:animals_photos/study/photos_viewer.dart';
import 'package:animals_photos/study/slider_row.dart';
import 'package:flutter/material.dart';

class StudyScreen extends StatefulWidget {
  const StudyScreen({super.key, required this.backToStartScreen});

  final void Function() backToStartScreen;

  @override
  State<StudyScreen> createState() {
    return _StudyScreenState();
  }
}

class _StudyScreenState extends State<StudyScreen> {
  String currAnimal = 'bird';

  List<ButtonClass> theButtonsInSlider = [];

  void changeAnimal(String newAnimal) {
    setState(() {
      if (photosMap.containsKey(newAnimal)) currAnimal = newAnimal;
    });
  }

  @override
  void initState() {
    theButtonsInSlider = [
      ButtonClass(onTab: changeAnimal, text: 'Cat'),
      ButtonClass(onTab: changeAnimal, text: 'Camel'),
      ButtonClass(onTab: changeAnimal, text: 'Bird'),
      ButtonClass(onTab: changeAnimal, text: 'Monke'),
      ButtonClass(onTab: changeAnimal, text: 'Donkey'),
      ButtonClass(onTab: changeAnimal, text: 'Horse'),
      ButtonClass(onTab: changeAnimal, text: 'Lion'),
      ButtonClass(onTab: changeAnimal, text: 'Tiger'),
      ButtonClass(onTab: changeAnimal, text: 'Cheeta'),
    ];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    void Function() backToStartScreen = widget.backToStartScreen;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SliderRow(
          buttonsInSlider: theButtonsInSlider,
        ),
        const SizedBox(
          height: 30,
        ),
        PhotesViewer(
          animalName: currAnimal,
        ),
        const SizedBox(
          height: 30,
        ),
        StartButton(
          buttonText: 'Home Screen!',
          onTab: backToStartScreen,
          buttonIcon: const Icon(Icons.home_filled),
        ),
      ],
    );
  }
}
