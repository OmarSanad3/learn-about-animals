import 'package:flutter/material.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem({super.key, required this.data});

  final Map<String, Object> data;

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
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            width: 200,
            height: 200,
            child: Image.asset(
              data['photo'] as String,
              width: 200,
              height: 200,
              alignment: Alignment.topLeft,
            ),
          ),
          Column(
            children: [
              Text(
                data['user-answer'] as String,
                style: const TextStyle(
                    color: Color.fromARGB(255, 24, 231, 242),
                    fontSize: 30,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                data['correct-answer'] as String,
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
