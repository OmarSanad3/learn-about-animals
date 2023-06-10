import 'package:flutter/material.dart';

class ResultsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'You have Answered (x) correct questions out of (y) questions',
        ),
        Container(
          margin: const EdgeInsets.all(5),
          height: 500,
          child : SingleChildScrollView(child: ,),
        ),
      ],
    );
  }
}
