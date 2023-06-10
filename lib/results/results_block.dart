import 'package:animals_photos/results/summary_item.dart';
import 'package:flutter/material.dart';

class ResultsBlock extends StatelessWidget {
  const ResultsBlock({super.key, required this.summary});
  final List<Map<String, Object>> summary;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...summary.map(
          (data) {
            return SummaryItem(data: data);
          },
        ).toList(),
      ],
    );
  }
}
