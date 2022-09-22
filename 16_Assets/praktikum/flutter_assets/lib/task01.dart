import 'package:flutter/material.dart';
import './merbabu.dart';
import './sindoro.dart';
import './sumbing.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Flutter Assets"),
        ),
        body: const ViewGrid(),
      ),
    );
  }
}

class ViewGrid extends StatefulWidget {
  const ViewGrid({super.key});

  @override
  State<ViewGrid> createState() => _ViewGridState();
}

class _ViewGridState extends State<ViewGrid> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 1,
      padding: const EdgeInsetsDirectional.all(10),
      mainAxisSpacing: 10,
      childAspectRatio: 1.5,
      children: [
        FloatingActionButton(
          child: const Image(
            image: AssetImage("images/merbabu.jpg"),
            alignment: Alignment.center,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Merbabu()),
            );
          },
        ),
        FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Sindoro()),
            );
          },
          child: const Image(
            image: AssetImage("images/sindoro.jpg"),
            alignment: Alignment.center,
          ),
        ),
        FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Sumbing()),
            );
          },
          child: const Image(
            image: AssetImage("images/sumbing.jpg"),
            alignment: Alignment.center,
          ),
        ),
      ],
    );
  }
}
