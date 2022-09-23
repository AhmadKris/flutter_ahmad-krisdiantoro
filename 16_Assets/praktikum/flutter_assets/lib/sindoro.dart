import 'package:flutter/material.dart';

class Sindoro extends StatelessWidget {
  const Sindoro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        "images/sindoro.jpg",
        height: 900,
        fit: BoxFit.fill,
      ),
    );
  }
}
