import 'package:flutter/material.dart';

class ChooseAnimal extends StatefulWidget {
  const ChooseAnimal({super.key});

  @override
  State<ChooseAnimal> createState() {
    return _ChooseAnimalState();
  }
}

class _ChooseAnimalState extends State<ChooseAnimal> {
  void pickACat() {}

  @override
  Widget build(context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
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
            TextButton(
              style: TextButton.styleFrom(
                shadowColor: Colors.black,
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              onPressed: pickACat,
              child: const Text('Show a cat'),
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
            TextButton(
              style: TextButton.styleFrom(
                foregroundColor: Colors.white,
                textStyle: const TextStyle(fontSize: 28),
              ),
              onPressed: pickACat,
              child: const Text('Show a cat'),
            ),
          ],
        ),
      ],
    );
  }
}
