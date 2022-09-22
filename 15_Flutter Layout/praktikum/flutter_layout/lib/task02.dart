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
  const Icon(Icons.pets),
  const Icon(Icons.pregnant_woman),
  const Icon(Icons.spatial_audio_off),
  const Icon(Icons.rounded_corner),
  const Icon(Icons.rowing),
  const Icon(Icons.timeline),
  const Icon(Icons.update),
  const Icon(Icons.access_time_filled),
  const Icon(Icons.back_hand),
  const Icon(Icons.euro),
  const Icon(Icons.g_translate),
  const Icon(Icons.remove_shopping_cart),
  const Icon(Icons.restore_page),
  const Icon(Icons.speaker_notes_off),
  const Icon(Icons.delete_forever),
  const Icon(Icons.accessibility),
  const Icon(Icons.check_circle_outline),
  const Icon(Icons.delete_outline),
  const Icon(Icons.done_outline),
  const Icon(Icons.maximize),
  const Icon(Icons.minimize),
  const Icon(Icons.offline_bolt_rounded),
  const Icon(Icons.swap_horizontal_circle),
  const Icon(Icons.accessible_forward),
];
