import 'package:flutter/material.dart';
import 'package:flutter_input_button/add_person.dart';
import 'package:flutter_input_button/task01.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: Task01.routeName,
      routes: {
        Task01.routeName: (context) => const Task01(),
        AddPerson.routeName: (context) => const AddPerson(),
      },
    );
  }
}
