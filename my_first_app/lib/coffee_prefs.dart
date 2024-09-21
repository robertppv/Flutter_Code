import 'package:flutter/material.dart';

class CoffeePrefs extends StatelessWidget {
  const CoffeePrefs({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        Row(
          children: [
            Text("Strenght:  "),
            Text("3"),
            SizedBox(
              width: 50,
            )
          ],
        ),
        Row(
          children: [
            Text("Sugarr  "),
            Text("3"),
            SizedBox(
              width: 50,
            )
          ],
        ),
      ],
    );
  }
}
