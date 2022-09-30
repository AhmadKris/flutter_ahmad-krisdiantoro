import 'package:dialog_bottom_sheet/gallery.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gallery',
      theme: ThemeData.dark(useMaterial3: true),
      home: Gallery(),
    );
  }
}
