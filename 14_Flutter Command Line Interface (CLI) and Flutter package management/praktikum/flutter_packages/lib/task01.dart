import 'package:flutter/material.dart';
import 'package:badges/badges.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: App(),
    );
  }
}

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task 01"),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Chip(
            padding: EdgeInsets.all(5),
            backgroundColor: Colors.deepPurple,
            label: Text("BADGE", style: TextStyle(color: Colors.white)),
          ),
          Badge(
            padding: const EdgeInsets.all(5),
            toAnimate: false,
            shape: BadgeShape.square,
            badgeColor: Colors.deepPurple,
            borderRadius: BorderRadius.circular(15),
            badgeContent:
                const Text("BADGE", style: TextStyle(color: Colors.white)),
          ),
        ],
      )),
    );
  }
}
