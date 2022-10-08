import 'package:flutter/material.dart';
import 'package:flutter_animation/provider/contact_provider.dart';
import 'package:flutter_animation/screens/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(
      create: (_) => ContactProvider(),
    ),
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Animation',
      theme: ThemeData.dark(useMaterial3: true),
      home: const HomePage(),
    );
  }
}
