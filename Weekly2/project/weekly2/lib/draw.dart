import 'package:flutter/material.dart';

class Draw extends StatelessWidget {
  const Draw({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        width: 100,
        child: Column(
          children: [
            MaterialButton(
              minWidth: 100,
              color: Colors.lightBlue,
              onPressed: () {},
              child: const Text('About Us'),
            ),
            MaterialButton(
              minWidth: 100,
              color: Colors.lightBlue,
              onPressed: () {},
              child: const Text('Contact Us'),
            ),
            MaterialButton(
              minWidth: 100,
              color: Colors.lightBlue,
              onPressed: () {},
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}
