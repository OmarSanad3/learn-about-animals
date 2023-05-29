import 'package:flutter/material.dart';

import 'dart:math';

final randomizer = Random();

int getRandom(int min, int max) {
  return min + randomizer.nextInt(max - min);
}

class ChooseAnimal extends StatefulWidget {
  const ChooseAnimal({super.key});

  @override
  State<ChooseAnimal> createState() {
    return _ChooseAnimalState();
  }
}

class _ChooseAnimalState extends State<ChooseAnimal> {
  var currImage = '../assets/animals_images/bird1.jpg';

  List<String> allBirds = [
    '../assets/animals_images/bird1.jpg',
    '../assets/animals_images/bird2.jpg',
    '../assets/animals_images/bird3.jpg',
    '../assets/animals_images/bird4.jpg',
    '../assets/animals_images/bird5.jpg',
    '../assets/animals_images/bird6.jpg',
  ];

  List<String> allCamels = [
    '../assets/animals_images/camel1.jpg',
    '../assets/animals_images/camel2.jpg',
    '../assets/animals_images/camel3.jpg',
    '../assets/animals_images/camel4.jpg',
  ];

  List<String> allCats = [
    '../assets/animals_images/cat1.jpg',
    '../assets/animals_images/cat2.jpg',
    '../assets/animals_images/cat3.jpg',
    '../assets/animals_images/cat4.jpg',
    '../assets/animals_images/cat5.jpg',
  ];

  List<String> otherAnimals = [
    '../assets/animals_images/bear1.jpg',
    '../assets/animals_images/deer1.jpg',
    '../assets/animals_images/dolphin1.jpg',
    '../assets/animals_images/lion1.jpg',
    '../assets/animals_images/tiger1.jpg',
  ];

  void changeImage(List<String> arr) {
    setState(() {
      currImage = arr[getRandom(0, arr.length - 1)];
    });
  }

  void pickACat() {
    changeImage(allCats);
  }

  void pickACamel() {
    changeImage(allCamels);
  }

  void pickABird() {
    changeImage(allBirds);
  }

  void pickAnAnimal() {
    changeImage(otherAnimals);
  }

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          currImage,
          width: 350,
          height: 350,
        ),
        const SizedBox(
          height: 25,
          width: 25,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Cat button
            TextButton(
              style: TextButton.styleFrom(
                shadowColor: Colors.black,
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              onPressed: pickACat,
              child: const Text('Show a cat'),
            ),
            const SizedBox(
              height: 25,
              width: 25,
            ),
            // Bird button
            TextButton(
              style: TextButton.styleFrom(
                shadowColor: Colors.black,
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              onPressed: pickABird,
              child: const Text('Show a bird'),
            ),
          ],
        ),
        const SizedBox(
          height: 25,
          width: 25,
        ),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Camel button
            TextButton(
              style: TextButton.styleFrom(
                shadowColor: Colors.black,
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              onPressed: pickACamel,
              child: const Text('Show a Camel'),
            ),
            const SizedBox(
              height: 25,
              width: 25,
            ),
            // others button
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              onPressed: pickAnAnimal,
              child: const Text('Show other animals'),
            ),
          ],
        ),
      ],
    );
  }
}
