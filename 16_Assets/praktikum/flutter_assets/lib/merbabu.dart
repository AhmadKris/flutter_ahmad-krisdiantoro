import 'package:flutter/material.dart';

class Merbabu extends StatelessWidget {
  const Merbabu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset(
        "images/merbabu.jpg",
        height: 900,
        fit: BoxFit.fill,
      ),
    );
  }
}
