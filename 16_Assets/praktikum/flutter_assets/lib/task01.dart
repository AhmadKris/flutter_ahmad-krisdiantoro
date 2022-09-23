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
          centerTitle: true,
        ),
        body: const ViewGrid(),
      ),
    );
  }
}

class ViewGrid extends StatelessWidget {
  const ViewGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      padding: const EdgeInsetsDirectional.all(10),
      mainAxisSpacing: 10,
      crossAxisSpacing: 10,
      children: [
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Merbabu()),
            );
          },
          child: Ink.image(
            fit: BoxFit.fill,
            image: const AssetImage("images/merbabu.jpg"),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Sumbing()),
            );
          },
          child: Ink.image(
            fit: BoxFit.fill,
            image: const AssetImage("images/sumbing.jpg"),
          ),
        ),
        InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const Sindoro()),
            );
          },
          child: Ink.image(
            fit: BoxFit.fill,
            image: const AssetImage("images/sindoro.jpg"),
          ),
        ),
      ],
    );
  }
}
