import 'package:flutter/material.dart';
import 'package:barcode_widget/barcode_widget.dart';

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
        title: const Text('Task 02'),
      ),
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          BarcodeWidget(
            barcode: Barcode.code128(),
            data: 'Alterra Academy',
            width: 200,
            height: 100,
          ),
          BarcodeWidget(
            barcode: Barcode.gs128(),
            data: 'Flutter Asik',
            width: 200,
            height: 100,
            margin: const EdgeInsets.all(20),
          ),
          BarcodeWidget(
            barcode: Barcode.code128(),
            data: 'Ahmad Krisdiantoro',
            width: 200,
            height: 100,
          ),
        ],
      )),
    );
  }
}
