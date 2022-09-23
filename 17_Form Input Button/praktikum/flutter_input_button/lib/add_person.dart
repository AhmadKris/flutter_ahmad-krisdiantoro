import 'package:flutter/material.dart';

class AddPerson extends StatelessWidget {
  const AddPerson({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create New Contact'),
      ),
      body: ListView(
        children: const [
          ListTile(
            title: Text('Teskdh'),
          )
        ],
      ),
    );
  }
}
