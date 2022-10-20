import 'package:flutter/material.dart';
import 'package:flutter_task/view_models/food_provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final foods = Provider.of<FoodProvider>(context).items;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Finite State'),
        centerTitle: true,
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          childAspectRatio: 1,
        ),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Image(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://asset.kompas.com/crops/kL9Vik9MGd2Shkl40qtr8OyPVIw=/0x44:1000x544/750x500/data/photo/2018/08/13/2696522316.jpg"),
                ),
                Text(
                  foods[index].name,
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
              ],
            )),
          );
        },
        itemCount: foods.length,
      ),
    );
  }
}
