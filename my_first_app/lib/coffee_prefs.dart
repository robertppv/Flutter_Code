import 'package:flutter/material.dart';
import 'package:my_first_app/styled_button.dart';
import 'package:my_first_app/styled_text.dart';

class CoffeePrefs extends StatefulWidget {
  const CoffeePrefs({super.key});

  @override
  State<CoffeePrefs> createState() => _CoffeePrefsState();
}

class _CoffeePrefsState extends State<CoffeePrefs> {
  int strenght = 1;
  int sugar = 0;

  void increaseStrenght() {
    setState(() {
      if (strenght < 5) strenght += 1;
    });
  }

  void resetStrenght() {
    setState(() {
      strenght = 1;
    });
  }

  void increaseSugar() {
    setState(() {
      if (sugar < 5) sugar += 1;
    });
  }

  void resetSugar() {
    setState(() {
      sugar = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            const StyledText(text: "Strenght:"),
            for (int i = 0; i < strenght; i++)
              Image.asset(
                "assets/img/coffeeBean.png",
                width: 30,
                color: const Color.fromARGB(255, 187, 148, 87),
                colorBlendMode: BlendMode.multiply,
              ),
            const Expanded(
              child: SizedBox(
                width: 45,
              ),
            ),
            StyledButton(
              onPressed: increaseStrenght,
              child: const Text("+"),
            ),
            const SizedBox(
              width: 5,
            ),
            StyledButton(
              onPressed: resetStrenght,
              child: const Text("Reset"),
            ),
          ],
        ),
        Row(
          children: [
            const StyledText(text: "Sugar:"),
            for (int i = 0; i < sugar; i++)
              Image.asset(
                'assets/img/sugarCube.png',
                width: 30,
              ),
            const Expanded(
              child: SizedBox(
                width: 50,
              ),
            ),
            StyledButton(
              onPressed: increaseSugar,
              child: const Text("+"),
            ),
            const SizedBox(
              width: 5,
            ),
            StyledButton(
              onPressed: resetSugar,
              child: const Text("Reset"),
            ),
          ],
        ),
      ],
    );
  }
}
