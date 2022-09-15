import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Widget'),
        ),
        body: StreamBuilder(
            stream: Stream.periodic(const Duration(seconds: 1)),
            builder: (context, snapshot) {
              return Center(
                child: Text(
                  DateFormat('kk:mm:ss').format(DateTime.now()),
                  style: const TextStyle(
                      fontSize: 36, fontWeight: FontWeight.bold),
                ),
              );
            }),
      ),
    );
  }
}
