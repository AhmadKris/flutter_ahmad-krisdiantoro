import 'package:flutter/material.dart';

class Sumbing extends StatelessWidget {
  const Sumbing({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Image(
        image: AssetImage("images/sumbing.jpg"),
      ),
    );
  }
}
