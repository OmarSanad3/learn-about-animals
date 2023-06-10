import 'package:flutter/material.dart';

class ResultsBlock extends StatelessWidget {
  ResultsBlock({super.key, required this.summary});
  final List<Map<String, Object>> summary;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ...summary.map(
          (data) {
            return Text('omar');
          },
        ).toList(),
      ],
    );
  }
}
