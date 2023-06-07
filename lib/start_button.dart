import 'package:flutter/material.dart';

class StartButton extends StatelessWidget {
  const StartButton({
    super.key,
    required this.buttonText,
    required this.onTab,
    this.buttonIcon = const Icon(Icons.menu_book_sharp),
  });

  final void Function() onTab;
  final String buttonText;
  final Icon buttonIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: OutlinedButton.icon(
        icon: buttonIcon,
        onPressed: onTab,
        style: OutlinedButton.styleFrom(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          foregroundColor: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(40),
          ),
        ),
        label: Text(
          buttonText,
          style: const TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
