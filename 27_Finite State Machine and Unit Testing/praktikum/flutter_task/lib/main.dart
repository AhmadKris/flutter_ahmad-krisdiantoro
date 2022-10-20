import 'package:flutter/material.dart';
import 'package:flutter_task/view_models/food_provider.dart';
import 'package:flutter_task/views/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => FoodProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Finite State',
      theme: ThemeData.dark(useMaterial3: true),
      home: const HomePage(),
    );
  }
}
