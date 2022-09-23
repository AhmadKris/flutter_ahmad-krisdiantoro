import 'package:flutter/material.dart';

class Sumbing extends StatelessWidget {
  const Sumbing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        "images/sumbing.jpg",
        height: 900,
        fit: BoxFit.fill,
      ),
    );
  }
}
