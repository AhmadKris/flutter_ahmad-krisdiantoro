import 'package:flutter/material.dart';
import 'package:flutter_layout/circle_avatar.dart';

class Task2 extends StatelessWidget {
  const Task2({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(20),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 2,
        mainAxisSpacing: 60,
      ),
      itemBuilder: (context, index) => CircleView(icons[index]),
      itemCount: icons.length,
    );
  }
}

final icons = [
  const Icon(Icons.abc),
  const Icon(Icons.access_alarm),
  const Icon(Icons.ac_unit),
  const Icon(Icons.access_time),
  const Icon(Icons.accessibility),
  const Icon(Icons.accessible),
  const Icon(Icons.account_balance),
  const Icon(Icons.account_circle),
  const Icon(Icons.adb),
  const Icon(Icons.account_tree),
  const Icon(Icons.add),
  const Icon(Icons.ad_units),
  const Icon(Icons.add_box),
  const Icon(Icons.add_a_photo),
  const Icon(Icons.add_alarm),
  const Icon(Icons.add_alert),
  const Icon(Icons.add_call),
  const Icon(Icons.add_card),
  const Icon(Icons.add_business),
  const Icon(Icons.add_chart),
  const Icon(Icons.add_circle),
  const Icon(Icons.add_home),
  const Icon(Icons.add_comment),
  const Icon(Icons.add_link),
];
