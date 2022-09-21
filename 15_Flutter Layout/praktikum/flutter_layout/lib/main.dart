import 'package:flutter/material.dart';
import 'package:flutter_layout/task02.dart';
import 'package:flutter_layout/task01.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('Flutter Layout'),
            centerTitle: true,
            bottom: const TabBar(tabs: [
              Tab(
                text: 'Task 01',
              ),
              Tab(
                text: 'Task 02',
              ),
            ]),
          ),
          body: const TabBarView(children: [
            Task1(),
            Task2(),
          ]),
        ),
      ),
    );
  }
}
