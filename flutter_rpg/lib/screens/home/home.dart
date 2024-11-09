import 'package:flutter/material.dart';
import 'package:flutter_rpg/shared/styled_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const StyledTitle("My Pets"),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            const StyledText("Pets List"),
            const StyledHeading("Characters List"),
            const StyledTitle("Characters List"),
            FilledButton(onPressed: () {}, child: const Text("Create new")),
          ],
        ),
      ),
    );
  }
}
