import 'package:animals_photos/data/photos_by_key.dart';
import 'package:flutter/material.dart';

class PhotesViewer extends StatelessWidget {
  PhotesViewer({super.key, required this.animalName});

  final String animalName;

  @override
  Widget build(BuildContext context) {
    List<String> photos = photosMap[animalName] as List<String>;
    return SizedBox(
      height: 500,
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (int i = 0; i < photos.length; i++)
              Column(children: [
                Image.asset(
                  photos[i],
                  width: 300,
                ),
                const SizedBox(height: 10),
              ]),
          ],
        ),
      ),
    );
  }
}
