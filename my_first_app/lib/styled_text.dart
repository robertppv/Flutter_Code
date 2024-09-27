import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  const StyledText({required this.text, super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text,
        style: const TextStyle(
            fontWeight: FontWeight.bold,
            color: Color(0xffFFF0D1),
            fontSize: 15));
  }
}
