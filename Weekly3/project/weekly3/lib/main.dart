import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weekly3/models/task_manager.dart';
import 'package:weekly3/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => TaskManager(),
        ),
      ],
      child: MaterialApp(
        theme: ThemeData.dark(useMaterial3: true),
        title: 'Weekly App 3',
        home: const HomeScreen(),
      ),
    );
  }
}
