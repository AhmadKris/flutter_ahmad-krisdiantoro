import 'package:flutter/material.dart';
import './task01.dart';
import './add_person.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: '/Task01',
      routes: {
        '/Task01': (context) => const Task01(),
        '/AddPerson': (context) => const AddPerson(),
      },
    );
  }
}
