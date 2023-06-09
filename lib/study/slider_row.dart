import 'package:animals_photos/study/button_class.dart';
import 'package:animals_photos/study/show_animals_button.dart';
import 'package:flutter/material.dart';

class SliderRow extends StatelessWidget {
  const SliderRow({
    super.key,
    required this.buttonsInSlider,
  });

  final List<ButtonClass> buttonsInSlider;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          for (int i = 0; i < buttonsInSlider.length; i++)
            ShowAnimalsButton(
              onTab: buttonsInSlider[i].onTab,
              text: buttonsInSlider[i].text,
            ),
        ],
      ),
    );
  }
}
