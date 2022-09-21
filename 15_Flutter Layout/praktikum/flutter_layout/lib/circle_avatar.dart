import 'package:flutter/material.dart';

class CircleView extends StatelessWidget {
  final Icon icon;
  const CircleView(this.icon, {super.key});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.lightBlue,
      foregroundColor: Colors.white,
      child: icon,
    );
  }
}
