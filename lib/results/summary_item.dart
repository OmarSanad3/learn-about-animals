import 'package:animals_photos/results/question_identifier.dart';
import 'package:flutter/material.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.data});

  final Map<String, Object> data;

  String capitalizeFirstLetter(String s) {
    return '${s[0].toUpperCase()}${s.substring(1).toLowerCase()}';
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.centerLeft,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 10,
      ),
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          QuestionIdentifier(
            isCorrect: data['user-answer'] == data['correct-answer'],
            questionIdx: data['index'] as int,
          ),
          Container(
            margin: const EdgeInsets.only(right: 20, left: 8),
            width: 150,
            height: 150,
            child: Image.asset(
              data['photo'] as String,
              alignment: Alignment.topLeft,
            ),
          ),
          Column(
            children: [
              Text(
                capitalizeFirstLetter(data['user-answer'] as String),
                style: const TextStyle(
                    color: Color.fromARGB(255, 24, 231, 242),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                capitalizeFirstLetter(data['correct-answer'] as String),
                style: const TextStyle(
                  color: Color.fromARGB(255, 86, 197, 16),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
