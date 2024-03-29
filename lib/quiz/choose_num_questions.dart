import 'package:flutter/material.dart';

import '../start_button.dart';

class ChooseNumQuestions extends StatelessWidget {
  const ChooseNumQuestions({
    super.key,
    required this.getNumOfQuestions,
    required this.backToStartScreen,
  });

  final void Function(int numOfQuestion) getNumOfQuestions;
  final void Function() backToStartScreen;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin:
              const EdgeInsets.only(left: 20, right: 20, top: 70, bottom: 30),
          alignment: Alignment.center,
          child: const Text(
            'Choose Number Of Questions!',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
              color: Color.fromRGBO(165, 214, 167, 1),
            ),
          ),
        ),
        Container(
          height: 400,
          alignment: Alignment.center,
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                for (int i = 5; i <= 50; i += 5)
                  ElevatedButton(
                    onPressed: () {
                      getNumOfQuestions(i);
                    },
                    style: ElevatedButton.styleFrom(
                        textStyle: const TextStyle(fontSize: 25)),
                    child: Text('Get $i Questions'),
                  ),
                // the home screen button
              ],
            ),
          ),
        ),
        const SizedBox(height: 50),
        StartButton(
          buttonText: 'Home Screen!',
          onTab: backToStartScreen,
          buttonIcon: const Icon(Icons.home_filled),
        ),
      ],
    );
  }
}
