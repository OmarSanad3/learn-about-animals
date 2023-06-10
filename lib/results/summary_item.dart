import 'package:flutter/material.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.data});

  final Map<String, Object> data;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(
          data['photo'] as String,
          width: 200,
          height: 200,
        ),
        Column(
          children: [
            Text(data['user-answer'] as String),
            Text(data['correct-answer'] as String),
          ],
        )
      ],
    );
  }
}
