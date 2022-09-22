import 'package:flutter/material.dart';

class Sindoro extends StatelessWidget {
  const Sindoro({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: const Image(
        image: AssetImage("images/sindoro.jpg"),
      ),
    );
  }
}
