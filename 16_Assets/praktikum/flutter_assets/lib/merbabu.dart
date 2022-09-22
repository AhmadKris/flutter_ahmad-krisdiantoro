import 'package:flutter/material.dart';

class Merbabu extends StatelessWidget {
  const Merbabu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Image(
        image: AssetImage("images/merbabu.jpg"),
      ),
    );
  }
}
