import 'package:flutter/material.dart';
import 'package:my_first_app/coffee_prefs.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My perfect coffee",
          style:
              TextStyle(fontWeight: FontWeight.bold, color: Color(0xffFFF0D1)),
        ),
        toolbarHeight: 35,
        backgroundColor: const Color(0xFF664343),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: const Color(0xff795757),
            padding: const EdgeInsets.all(20),
            child: const Text(
              "I like my coffee:",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 187, 148, 87),
            padding: const EdgeInsets.all(20),
            child: const CoffeePrefs(),
          ),
        ],
      ),
    );
  }
}
