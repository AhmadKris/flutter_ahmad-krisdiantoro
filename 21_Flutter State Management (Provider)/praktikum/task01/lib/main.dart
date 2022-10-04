import 'package:flutter/material.dart';
import 'package:task01/add_person.dart';
import 'package:task01/task01.dart';

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
